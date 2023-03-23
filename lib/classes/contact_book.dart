import 'contact.dart';

class ContactBook {
  ContactBook._instance();
  static final ContactBook _shared = ContactBook._instance();
  factory ContactBook() => _shared;

  final List<Contact> _contacts = [];

  int get length => _contacts.length;

  void addContact(Contact contact) {
    _contacts.add(contact);
  }

  void removeContact(Contact contact) {
    _contacts.remove(contact);
  }

  Contact? getContact(int index) => _contacts.length > index ? _contacts[index] : null;
}