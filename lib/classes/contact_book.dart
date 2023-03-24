import 'package:flutter/cupertino.dart';

import 'contact.dart';

class ContactBook extends ValueNotifier<List<Contact>> {
  ContactBook._instance() : super([]);
  static final ContactBook _shared = ContactBook._instance();
  factory ContactBook() => _shared;

  int get length => value.length;

  void addContact(Contact contact) {
    value.add(contact);
    notifyListeners();
  }

  void removeContact(Contact contact) {
    if(value.contains(contact)){
      value.remove(contact);
      notifyListeners();
    }
  }

  Contact? getContact(int index) => value.length > index ? value[index] : null;
}