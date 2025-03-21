// upload foto
import 'package:flutter/material.dart';

void main() => runApp(BelajarImage()); 

class BelajarImage extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold( // Struktur dasar halaman
        appBar: AppBar(title: Text("belajarFlutter.com")), 
        body: Image.asset('assets/maxresdefault.jpg'), // Menampilkan gambar
      ),
    );
  }
}
