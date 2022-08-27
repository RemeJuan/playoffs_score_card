import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_saver/flutter_file_saver.dart';
import 'package:isar/isar.dart';
import 'package:playoffs_score_card/collections/score_card.collection.dart';

class ProfileProvider extends ChangeNotifier {
  final Isar _isar;
  final FlutterFileSaver _fileSaver;
  final FilePicker _filePicker;

  bool hasRecords = false;

  String email = "";
  String password = "";
  String confirmPassword = "";

  ProfileProvider(this._isar,
      this._fileSaver,
      this._filePicker,) {
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

  void cleanUp() async {
    email = "";
    password = "";
    confirmPassword = "";
    notifyListeners();
  }
}
