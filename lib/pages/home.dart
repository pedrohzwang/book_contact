import 'package:contacts/navigation/routes.dart';
import 'package:contacts/widgets/contact_card.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:contacts/hive/hive_controller.dart';
import 'package:contacts/models/contact.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agenda de contatos'),
        centerTitle: true,
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              contactForm,
              arguments: null,
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
      body: ValueListenableBuilder(
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
          return ListView.builder(
            itemCount: box.values.length,
            itemBuilder: (context, index) {
              return ContactCard(box.getAt(index)!);
            },
          );
        },
      ),
    );
  }
}
