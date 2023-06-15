import 'package:isar/isar.dart';

part 'user.collection.g.dart';

@Collection()
class User {
  Id? id = Isar.autoIncrement;
  late String userId;
}
