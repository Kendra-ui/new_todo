class Task {
  final String title;
  final String description;
  final String username;

  Task( {
    required this.title,
    required this.description, 
    required this.username, 

  });

  factory Task.fromMap(Map<String, dynamic> json) => Task(
        title: json["title"],
        description: json["description"],
        username: json["username"],
      );
  Map<String, dynamic> toMap() {
    return {
     
      'title': title,
      'description': description,
      'username': username
    };
  }

  @override
  bool operator ==(covariant Task other){
    return(username == other.username) &&
    (title.toUpperCase().compareTo(other.title.toUpperCase()) == 0);
  }
}
