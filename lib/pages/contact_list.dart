import 'package:hive_flutter/hive_flutter.dart';
import 'package:contacts/hive/hive_controller.dart';
import 'package:contacts/models/contact.dart';
import 'package:flutter/cupertino.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: contactBox.listenable(),
      builder: (context, Box<Contact> box, _) {
        if (box.values.isEmpty) {
          return const Center(
            child: Text(
              'Sem contatos cadastrados',
              style: TextStyle(fontSize: 25),
            ),
          );
        }
        return const Center(
          child: Text(
            'Sem contatos cadastrados',
            style: TextStyle(fontSize: 25),
          ),
        );
      },
    );
  }
}
