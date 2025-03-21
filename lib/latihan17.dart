// Styling flutter
import 'package:flutter/material.dart';

void main() => runApp(MyApp()); 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( // Struktur dasar halaman
        appBar: AppBar(
          leading: Icon(Icons.dashboard), // Ikon kiri
          title: Text("Belajar MaterialApp Scaffold"), 
          actions: [Icon(Icons.search)], // Ikon kanan
          actionsIconTheme: IconThemeData(color: Colors.yellow), 
          backgroundColor: Colors.pinkAccent, // Warna AppBar
          bottom: PreferredSize(
            child: Container(color: Colors.orange, height: 4.0), // Garis bawah
            preferredSize: Size.fromHeight(4.0),
          ),
          centerTitle: true, // Judul di tengah
        ),
 
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pinkAccent, // Warna tombol
          child: Text('+'), // Teks tombol
          onPressed: () {}, // Aksi tombol
        ),

        body: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Posisi tengah
          children: [
            Container( // Lingkaran merah
              width: 50, height: 50,
              decoration: BoxDecoration(color: Colors.redAccent, shape: BoxShape.circle),
            ),
            SizedBox(width: 10), // Jarak

            Container( // Lingkaran pink
              width: 50, height: 50,
              decoration: BoxDecoration(color: Colors.pinkAccent, shape: BoxShape.circle),
            ),
            SizedBox(width: 10), // Jarak

            Container( // Lingkaran biru
              width: 50, height: 50,
              decoration: BoxDecoration(color: Colors.blueAccent, shape: BoxShape.circle),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false, 
    );
  }
}
