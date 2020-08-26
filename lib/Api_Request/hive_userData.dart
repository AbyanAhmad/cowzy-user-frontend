import 'package:hive/hive.dart';

part 'hive_userData.g.dart';

@HiveType(typeId: 1)
class UserData {
  @HiveField(0)
  String fullname ;
  @HiveField(1)
  int phoneNumber ;

  UserData(this.fullname, this.phoneNumber) ;
}