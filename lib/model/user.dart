class Users {
  String email;
  String username;
  String password;

  Users({required this.email, required this.username, required this.password});

  factory Users.fromMap(Map<String, dynamic> json) => Users(
      email: json["email"],
      username: json["username"],
      password: json["password"]);
  Map<String, dynamic> toMap() {
    return {'email': email, 'username': username, 'password': password};
  }
}
