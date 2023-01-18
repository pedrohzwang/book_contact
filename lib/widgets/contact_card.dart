import 'package:contacts/models/contact.dart';
import 'package:contacts/navigation/routes.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  ContactCard(this._contact, {super.key});

  final Contact _contact;

  _showOptions(BuildContext context, Contact contact) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Ligar",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Editar",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Excluir",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ],
          );
        });

    // showBottomSheet(
    //     context: context,
    //     builder: (context) {
    //       return BottomSheet(
    //           onClosing: () {},
    //           builder: (context) {
    //             return Container(
    //               padding: const EdgeInsets.all(10.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.center,
    //                 children: <Widget>[
    //                   TextButton(
    //                     onPressed: () {},
    //                     child: const Text(
    //                       "Ligar",
    //                       style: TextStyle(fontSize: 20.0),
    //                     ),
    //                   ),
    //                   TextButton(
    //                     onPressed: () {},
    //                     child: const Text(
    //                       "Ligar",
    //                       style: TextStyle(fontSize: 20.0),
    //                     ),
    //                   ),
    //                   TextButton(
    //                     onPressed: () {},
    //                     child: const Text(
    //                       "Ligar",
    //                       style: TextStyle(fontSize: 20.0),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             );
    //           });
    //     });
  }

// Navigator.pushNamed(context, contactForm, arguments: _contact)
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showOptions(context, _contact),
      child: Card(
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
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
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
