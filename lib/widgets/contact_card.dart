import 'package:contacts/models/contact.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  ContactCard(this._contact, {super.key});

  final Contact _contact;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
          // padding: const EdgeInsets.all(3),
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(5),
          //   color: Theme.of(context).primaryColorDark,
          // ),
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 80.0,
              height: 80.0,
              margin: const EdgeInsets.only(right: 10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/default_contact_image.png'),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _contact.name,
                  style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'E-mail: ${_contact.email}',
                        style: const TextStyle(fontSize: 17),
                      ),
                      Text(
                        'Telefone: ${_contact.phone}',
                        style: const TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
