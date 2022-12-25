import 'package:contacts/models/contact.dart';
import 'package:hive_flutter/adapters.dart';

late Box<Contact> contactBox;

class HiveController {
  void registerAdapters() {
    Hive.registerAdapter(ContactAdapter());
  }

  Future<void> openBoxes() async {
    await Hive.openBox<Contact>('contact');
    return; 
  }
}

