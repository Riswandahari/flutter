// widget menambahkan texfield
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // Menjalankan aplikasi
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Aplikasi utama
      debugShowCheckedModeBanner: false, 
      home: Scaffold( // Struktur halaman
        appBar: AppBar(title: Text("TextFormField Example")), 
        body: Padding(
          padding: EdgeInsets.all(16.0), // Jarak sekitar body
          child: TextFormField( 
            decoration: InputDecoration(
              labelText: "Masukkan teks", 
              border: OutlineInputBorder(), 
            ),
          ),
        ),
      ),
    );
  }
}
