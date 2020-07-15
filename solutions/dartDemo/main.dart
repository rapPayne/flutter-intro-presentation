void main() {
  Person p1 = Person(first: "Pam", last: "Beasley");
  Person p2 = Person.withName("Kelly", "Kapoor");
  Person p3 = Person.withName("Kevin","Malone");
  Person p4 = Person(last: "Bratton", first: "Creed");
  List<Person> team = [p1, p2, p3, p4];
  team.forEach((p) => print(p));
  print(team);
}

class Person {
  String first;
  String last;
  Person({String first, String last}) {
    this.first = first;
    this.last = last;
  }
  Person.withName(String first, String last) {
    this.first = first;
    this.last = last;
  }
  @override
  String toString() {
    return '$first $last';
  }
}

/*
# Expected
Create person class with first and last props
Instantiate him & print him
Override toString()
Add a constructor
Ask for four more names. Make person objects
Put them in a List<Person> team = [p1, p2, ...]
Loop thru with forEach().

# Unexpected
## Functions are objects
- Note the foreach function

## string templates with ${}
- Change toString()

## Named function parameters
- Put construction parameters in curlys

## Named constructors
- Copy constructor. Won't work.
- Make it Person.withName(String first, String last)

## omit this. and new
- Go thru. Remove them all. Ask if they like it better or worse

 */