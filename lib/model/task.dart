class Task {
  final String title;
  final String description;
  final String username;

  Task( {
    required this.title,
    required this.description, required this.username,
  });

  factory Task.fromMap(Map<String, dynamic> json) => Task(
        username: json["username"],
        title: json["title"],
        description: json["description"],
      );
  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'title': title,
      'description': description,
    };
  }
}
