import 'package:contacts/hive/hive_boxes.dart';
import 'package:contacts/models/contact.dart';
import 'package:hive_flutter/adapters.dart';

class HiveController {
  void registerAdapters() {
    Hive.registerAdapter(ContactAdapter());
  }

  Future<Box> openBox(HiveBoxes box) async {
    return await Hive.openBox(box.toValue());
  }
}

