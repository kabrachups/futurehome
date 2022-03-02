class User {
  int id;
  String firstName;
  String lastName;
  int mobile;
  String email;
  int priority;
  DateTime updatedAt;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.mobile,
    required this.email,
    required this.priority,
    required this.updatedAt,
  });

  User.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        firstName = json["firstName"],
        lastName = json["lastName"],
        mobile = json["mobile"],
        email = json["email"],
        priority = json["priority"],
        updatedAt = DateTime.parse(json["updatedAt"]);
}
