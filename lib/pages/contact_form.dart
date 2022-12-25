import 'package:contacts/models/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactForm extends StatefulWidget {
  ContactForm({this.contact, super.key});

  Contact? contact;

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: Image.asset('images/default_contact_image.png'),
          )
        ],
      ),
    );
  }
}
