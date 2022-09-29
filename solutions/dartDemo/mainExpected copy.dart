/*
# Expected
Create person class with first and last props
Instantiate him & print him
Override toString()
Add a constructor
Ask for four more names. Make person objects
Put them in a List<Person> team = [p1, p2, ...]
Loop thru with forEach().
*/
void main() {
  Person p1 = new Person("Pam", "Beasley");
  Person p2 = new Person("Kelly", "Kapoor");
  Person p3 = new Person("Kevin", "Malone");
  Person p4 = new Person("Bratton", "Creed");
  List<Person> team = [p1, p2, p3, p4];
  team.forEach((p) => print(p));
  print(team);
}

class Person {
  String first = "";
  String last = "";
  Person(String first, String last) {
    this.first = first;
    this.last = last;
  }

  @override
  String toString() {
    return this.first + " " + this.last;
  }
}
