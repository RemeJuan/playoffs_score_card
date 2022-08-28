import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_file_saver/flutter_file_saver.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:playoffs_score_card/core/models/max_scores.model.dart';

final dbProvider = Provider<Isar>((ref) {
  debugPrint('run isar provider');
  throw throw UnimplementedError("Isar not implemented");
});

final firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);
final firestoreProvider = Provider((ref) => FirebaseFirestore.instance);
final maxScoresProvider = StateProvider((ref) => MaxScoresModel());
final packageInfoProvider = Provider(
  (ref) async => await PackageInfo.fromPlatform(),
);

final routerProvider = StateProvider<int>((ref) => 0);
final versionProvider = FutureProvider<String>((ref) async {
  final packageInfo = await ref.read(packageInfoProvider);

  return packageInfo.version;
});

final filePickerProvider = Provider((ref) => FilePicker.platform);
final fileSaveProvider = Provider((ref) => FlutterFileSaver());
