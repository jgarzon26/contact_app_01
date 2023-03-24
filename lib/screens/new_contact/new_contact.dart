import 'package:contact_app_01/classes/contact_book.dart';
import 'package:flutter/material.dart';

import '../../classes/contact.dart';

class NewContact extends StatefulWidget{

  const NewContact({super.key});

  @override
  State<NewContact> createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {

  late final TextEditingController _nameController;

  @override
  void initState(){
    _nameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose(){
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: Text(
          'Add a new contact',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            letterSpacing: 1,
          ),
        ),
      ),
      body: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              hintText: 'Enter your new contact\'s name here',
            ),
          ),
          TextButton(
              onPressed: (){
                ContactBook().addContact(
                  Contact(
                    name: _nameController.text,
                  ),
                );
                Navigator.of(context).pop();
              },
              child: const Text(
                'Add Contact',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
          ),
        ],
      ),
    );
  }
}