import 'package:csv/csv.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_saver/flutter_file_saver.dart';
import 'package:isar/isar.dart';
import 'package:playoffs_score_card/collections/score_card.collection.dart';

class ProfileProvider extends ChangeNotifier {
  final Isar _isar;
  final FlutterFileSaver _fileSaver;
  bool hasRecords = false;

  ProfileProvider(this._isar, this._fileSaver) {
    _init();
  }

  void _init() async {
    hasRecords = _isar.scoreCards.where().countSync() > 0;
  }

  void exportData() async {
    final data = await _isar.scoreCards.where().sortByDateDesc().exportJson();
    final keys = data.first.keys.toList();

    final values = <List>[
      keys,
      data.map((e) => e.values.toList()).toList(),
    ];

    final csv = const ListToCsvConverter().convert(values);
    await _fileSaver.writeFileAsString(
      fileName: "playoffs_score_card_backup.csv",
      data: csv,
    );
  }
}
