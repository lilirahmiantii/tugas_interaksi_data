// lib/todo.dart

class Todo {
  final int userId; // TAMBAHKAN INI
  final int id;
  final String title;
  final bool completed;

  // Constructor
  const Todo({
    required this.userId, // TAMBAHKAN INI
    required this.id,
    required this.title,
    required this.completed,
  });

  // Factory constructor untuk membuat Todo dari JSON
  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      userId: json['userId'], // TAMBAHKAN INI
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}