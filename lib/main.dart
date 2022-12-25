import 'package:contacts/hive/hive_controller.dart';
import 'package:contacts/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  HiveController hiveController = HiveController();
  hiveController.registerAdapters();
  await hiveController.openBoxes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Contact',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(title: 'Book Contact'),
    );
  }
}

