// lib/api_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'todo.dart'; // Import model yang sudah kita buat

class ApiService {
  // Fungsi untuk mengambil daftar Todos dari API
  Future<List<Todo>> fetchTodos() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    // Cek jika request berhasil (status code 200)
    if (response.statusCode == 200) {
      // Decode body response dari String JSON menjadi List<dynamic>
      List<dynamic> body = jsonDecode(response.body);

      // Ubah setiap item di list menjadi objek Todo menggunakan fromJson
      List<Todo> todos = body.map((dynamic item) => Todo.fromJson(item)).toList();

      return todos;
    } else {
      // Jika request gagal, lemparkan exception
      throw Exception('Gagal memuat data todos');
    }
  }
}