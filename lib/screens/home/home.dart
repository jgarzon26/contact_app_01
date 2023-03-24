import 'package:contact_app_01/screens/home/widgets/contact_tile.dart';
import 'package:flutter/material.dart';
import '../../classes/contact_book.dart';

class Home extends StatelessWidget{

  const Home({super.key});

  @override
  Widget build(BuildContext context){

    final contactBook = ContactBook();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'contact'.toUpperCase(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: contactBook,
        builder: (context, value, child) =>
            CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => ContactTile(
                      contact: value[index],
                    ),
                    childCount: value.length,
                ),
              )
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed('/new'),
        child: const Icon(
          Icons.person_add_alt_1,
        ),
      ),
    );
  }
}