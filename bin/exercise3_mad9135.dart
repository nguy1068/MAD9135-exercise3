// bin/main.dart

import 'dart:convert';
import 'package:exercise3_mad9135/exercise3_mad9135.dart';


void main() {
  String json = '''
  [
    {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
    {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
    {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
    {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
  ]
  ''';
  
  List<Map<String, String>> peopleList = List<Map<String, String>>.from(
    (jsonDecode(json) as List<dynamic>).map((item) => Map<String, String>.from(item))
  );

  Students students = Students(peopleList);

  // Sorting by first name
  students.sort('first');
  print('Sorted by first name:');
  students.output();

  // Adding a new student
  students.plus({"first": "Mike", "last": "Nguyen", "email": "mikenguyen@gmail.com"});
  print('\nAfter adding a new student:');
  students.output();

  // Removing a student by email
  students.remove('griffis@algonquincollege.com');
  print('\nAfter removing Steve Griffith:');
  students.output();
}
