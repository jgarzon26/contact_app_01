import 'package:contact_app_01/classes/contact_book.dart';
import 'package:flutter/material.dart';

import '../../../classes/contact.dart';

class ContactTile extends StatelessWidget{

  final Contact contact;

  const ContactTile({super.key, required this.contact});

  @override
  Widget build(BuildContext context){
    return Dismissible(
      onDismissed: (direction) {
        ContactBook().removeContact(contact);
      },
      key: ValueKey(contact.id),
      child: Material(
        color: Colors.white,
        elevation: 6.0,
        child: ListTile(
          leading: const CircleAvatar(
            child: Icon(
              Icons.person,
            ),
          ),
          title: Text(
            contact.name,
          ),
        ),
      ),
    );
  }
}