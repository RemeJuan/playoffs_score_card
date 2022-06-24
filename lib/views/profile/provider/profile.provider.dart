import 'dart:convert';
import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_saver/flutter_file_saver.dart';
import 'package:isar/isar.dart';
import 'package:playoffs_score_card/collections/score_card.collection.dart';

enum AuthExceptions {
  WeakPassword("weak-password"),
  UserAlreadyExists("email-already-in-use"),
  UserNotFound("'user-not-found'"),
  WrongPassword("wrong-password");

  final String code;

  const AuthExceptions(this.code);
}

class ProfileProvider extends ChangeNotifier {
  final Isar _isar;
  final FlutterFileSaver _fileSaver;
  final FilePicker _filePicker;
  final FirebaseAuth _auth;
  bool hasRecords = false;

  ProfileProvider(this._isar, this._fileSaver, this._filePicker, this._auth) {
    _init();
  }

  void _init() async {
    hasRecords = _isar.scoreCards.where().countSync() > 0;
  }

  void exportData() async {
    final data = await _isar.scoreCards.where().exportJson();

    await _fileSaver.writeFileAsString(
      fileName: "playoffs_score_card_backup.json",
      data: jsonEncode(data),
    );
  }

  // Restore data from JSON backup file
  void importData() async {
    final result = await _filePicker.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['json'],
    );

    if (result != null) {
      final data = String.fromCharCodes(
        result.files.single.bytes!.buffer.asUint8List(),
      );
      final json = jsonDecode(data);
      await _isar.writeTxn((isar) => isar.scoreCards.importJson(json));
      hasRecords = true;
      notifyListeners();
    }
  }

  void createNewUser(String email, String password) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      log(credential.toString());
    } on FirebaseAuthException catch (e) {
      if (e.code == AuthExceptions.WeakPassword.code) {
        log('The password provided is too weak.');
      } else if (e.code == AuthExceptions.UserAlreadyExists.code) {
        log('The account already exists for that email.');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  void loginUser(String email, String password) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      log(credential.toString());
    } on FirebaseAuthException catch (e) {
      if (e.code == AuthExceptions.UserNotFound.code) {
        log('No user found for that email.');
      } else if (e.code == AuthExceptions.WrongPassword.code) {
        log('Wrong password provided for that user.');
      }
    }
  }
}
