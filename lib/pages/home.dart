import 'package:contacts/pages/contact_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key, required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agenda de contatos'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: const ContactList(),
    );
  }
}
