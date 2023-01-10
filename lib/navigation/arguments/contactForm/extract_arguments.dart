import 'package:contacts/models/contact.dart';
import 'package:contacts/pages/contact_form.dart';
import 'package:flutter/material.dart';

class ExtractArgumentsContactForm extends StatelessWidget {
  const ExtractArgumentsContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic arguments = ModalRoute.of(context)!.settings.arguments;
    final args = arguments != null ? arguments as Contact : null;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(args != null ? 'Editar contato' : 'Salvar contato'),
        centerTitle: true,
      ),
      body: ContactForm(contact: args),
    );
  }
}