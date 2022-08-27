import 'package:isar/isar.dart';

part 'user.collection.g.dart';

@Collection()
class User {
  @Id()
  int? id;
  late String userId;
}
