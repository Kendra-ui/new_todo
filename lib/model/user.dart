class User {
  final String email;
  final String username;
  final String password;

  User({required this.email, required this.username, required this.password});

  factory User.fromMap(Map<String, dynamic> json) => User(
      email: json["email"],
      username: json["username"],
      password: json["password"]);
  Map<String, dynamic> toMap() {
    return {'email': email, 'username': username, 'password': password};
  }
}
