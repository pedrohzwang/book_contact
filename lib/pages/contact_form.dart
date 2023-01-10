import 'package:contacts/hive/hive_controller.dart';
import 'package:contacts/models/contact.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  ContactForm({this.contact, super.key});

  Contact? contact;

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  final _nameFocus = FocusNode();
  final _phoneFocus = FocusNode();

  bool _isEdited = false;

  bool isFormComplete() {
    if (_nameController.text.isEmpty) {
      FocusScope.of(context).requestFocus(_nameFocus);
      return false;
    } else if (_phoneController.text.isEmpty) {
      FocusScope.of(context).requestFocus(_phoneFocus);
      return false;
    }

    return true;
  }

  Future<bool> _requestPop() {
    if (_isEdited) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Descartar alterações?"),
            content: const Text("Se sair as alterações serão perdidas."),
            actions: <Widget> [
              TextButton(
                child: const Text("Cancelar"),
                onPressed: () => Navigator.pop(context),
              ),
              TextButton(
                child: const Text("Sim"),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      );
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

  void _saveContact() {
    if (!isFormComplete()) {
      return;
    }

    if (widget.contact!.isInBox) {
      widget.contact!.name = _nameController.text;
      widget.contact!.email = _emailController.text;
      widget.contact!.phone = _phoneController.text;
      widget.contact!.save();
    } else {
      widget.contact = Contact(
          _nameController.text, _emailController.text, _phoneController.text);
      contactBox.add(widget.contact!);
    }

    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();

    _nameController.text = widget.contact?.name ?? "";
    _emailController.text = widget.contact?.email ?? "";
    _phoneController.text = widget.contact?.phone ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _requestPop,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: _saveContact,
          child: const Icon(Icons.save),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              GestureDetector(
                child: Container(
                  width: 140.0,
                  height: 140.0,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('images/default_contact_image.png'),
                    ),
                  ),
                ),
              ),
              TextFormField(
                controller: _nameController,
                focusNode: _nameFocus,
                decoration: const InputDecoration(labelText: "Nome"),
                onChanged: (value) => _isEdited = true,
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: "E-mail"),
                onChanged: (value) => _isEdited = true,
              ),
              TextField(
                focusNode: _phoneFocus,
                controller: _phoneController,
                decoration: const InputDecoration(labelText: "Phone"),
                onChanged: (value) => _isEdited = true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
