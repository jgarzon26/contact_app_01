import 'package:flutter/material.dart';

import '../../../classes/contact.dart';

class ContactTile extends StatelessWidget{

  final Contact contact;

  const ContactTile({super.key, required this.contact});

  @override
  Widget build(BuildContext context){
    return ListTile(
      leading: const CircleAvatar(
        child: Icon(
          Icons.person,
        ),
      ),
      title: Text(
        contact.name,
      ),
    );
  }
}