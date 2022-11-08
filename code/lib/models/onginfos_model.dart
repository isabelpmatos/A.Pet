class Ongsinfo {
  String name;
  String description;
  String email;
  String telephone;

  Ongsinfo({
    required this.name,
    required this.description,
    required this.email,
    required this.telephone
  });

  factory Ongsinfo.fromJson(Map<String, dynamic> parsedJson){

    return Ongsinfo(
      name: parsedJson['name'],
      description : parsedJson['description'],
      email: parsedJson['email'],
      telephone: parsedJson['telephone'],
    );
  }
}
