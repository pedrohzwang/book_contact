import 'package:hive/hive.dart';

// flutter pub run build_runner build
part 'contact.g.dart';

@HiveType(typeId: 0)
class Contact extends HiveObject {

  Contact(this.name, this.email, this.phone, {this.img = ''});

  @HiveField(0)
  String name;

  @HiveField(1)
  String email;

  @HiveField(2)
  String phone;

  @HiveField(3)
  String img;
}