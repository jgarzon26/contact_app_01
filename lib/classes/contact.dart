import 'package:uuid/uuid.dart';

class Contact{
  final String id = const Uuid().v4();
  final String name;

  Contact({required this.name});
}