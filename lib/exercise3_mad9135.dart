class Students {
  List<Map<String, String>> people;

  Students(this.people);

  void sort(String field) {
    people.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  void output() {
    for (var person in people) {
      print(person);
    }
  }

  void plus(Map<String, String> person) {
    people.add(person);
  }

  void remove(String email) {
    people.removeWhere((person) => person['email'] == email);
  }
}
