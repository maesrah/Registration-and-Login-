enum Gender {
  Male,
  Female,
}

class Person {
  final String name;
  final String email;
  final String password;
  final String confirmpass;
  final String country;
  final Gender gender;

  const Person(
      {required this.name,
      required this.email,
      required this.password,
      required this.confirmpass,
      required this.country,
      required this.gender});
}
