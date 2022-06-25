import 'dart:convert';

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
  String errorMessage = "";

  String email = "";
  String password = "";
  String confirmPassword = "";
  bool passwordMatch = false;

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

  // update users email address
  void updateEmail(String email) async {
    this.email = email;
    notifyListeners();
  }

  // update users password
  void updatePassword(String password) async {
    this.password = password;
    notifyListeners();
  }

  // update users confirm password
  void updateConfirmPassword(String confirmPassword) async {
    this.confirmPassword = confirmPassword;
    notifyListeners();
  }

  // check if passwords match
  void checkPasswordMatch() async {
    passwordMatch = password == confirmPassword;
    notifyListeners();
  }

  void createNewUser() async {
    errorMessage = "";
    try {
      final credentials = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      print(credentials);
    } on FirebaseAuthException catch (e) {
      if (e.code == AuthExceptions.WeakPassword.code) {
        errorMessage = 'The password provided is too weak.';
      } else if (e.code == AuthExceptions.UserAlreadyExists.code) {
        errorMessage = 'The account already exists for that email.';
      }
    } catch (e) {
      print(e);
      debugPrint(e.toString());
    }
  }

  void loginUser() async {
    errorMessage = "";
    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      debugPrint(credential.toString());
    } on FirebaseAuthException catch (e) {
      if (e.code == AuthExceptions.UserNotFound.code) {
        errorMessage = 'No user found for that email.';
      } else if (e.code == AuthExceptions.WrongPassword.code) {
        errorMessage = 'Wrong password provided for that user.';
      }
    }
  }

  void forgotPassword(String email) {
    errorMessage = "";
    try {
      _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      if (e.code == AuthExceptions.UserNotFound.code) {
        errorMessage = 'No user found for that email.';
      }
    }
  }
}
