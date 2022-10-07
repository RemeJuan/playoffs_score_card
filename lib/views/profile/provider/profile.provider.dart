import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_file_saver/flutter_file_saver.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:playoffs_score_card/collections/score_card.collection.dart';
import 'package:playoffs_score_card/core/providers/general_providers.dart';

final profileProvider = ChangeNotifierProvider(ProfileProvider.new);

class ProfileProvider extends ChangeNotifier {
  final Ref ref;

  late Isar _isar;
  late FlutterFileSaver _fileSaver;
  late FilePicker _filePicker;

  bool hasRecords = false;

  String email = "";
  String password = "";
  String confirmPassword = "";

  ProfileProvider(this.ref) {
    _init();
  }

  void _init() async {
    _isar = await ref.read(dbProvider);
    _fileSaver = ref.read(fileSaveProvider);
    _filePicker = ref.read(filePickerProvider);

    hasRecords = _isar.scoreCards.where().countSync() > 0;

    notifyListeners();
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
  }

  void cleanUp() async {
    email = "";
    password = "";
    confirmPassword = "";

    notifyListeners();
  }
}
