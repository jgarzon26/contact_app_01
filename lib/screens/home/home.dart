import 'package:contact_app_01/screens/home/widgets/contact_tile.dart';
import 'package:flutter/material.dart';
import '../../classes/contact.dart';
import '../../classes/contact_book.dart';

class Home extends StatelessWidget{

  const Home({super.key});

  @override
  Widget build(BuildContext context){

    final contactBook = ContactBook();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Contact',
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => ContactTile(
                  contact: contactBook.getContact(index)!,
                ),
                childCount: contactBook.length,
            ),
          )
        ],
      ),
    );
  }
}