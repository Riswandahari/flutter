// memanggil halaman langsung route
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage())); 
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Belajar Routing')), 
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigasi ke AboutPage
            Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
          },
          child: Text('Tap Untuk ke AboutPage'), // Teks tombol
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tentang Aplikasi')), // Judul AppBar
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context), // Kembali ke halaman sebelumnya
          child: Text('Kembali'), // Teks tombol
        ),
      ),
    );
  }
}
