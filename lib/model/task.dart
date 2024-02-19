class Task {
  final String title;
  final String description;

  Task( {
    required this.title,
    required this.description, 

  });

  factory Task.fromMap(Map<String, dynamic> json) => Task(
        title: json["title"],
        description: json["description"],
      );
  Map<String, dynamic> toMap() {
    return {
     
      'title': title,
      'description': description,
    };
  }

  // @override
  // bool operator ==(covariant Task other){
  //   return(username == other.username) &&
  //   (title.toUpperCase().compareTo(other.title.toUpperCase()) == 0);
  // }
}
