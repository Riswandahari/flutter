
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home())); // Home sebagai halaman awal
}

// Widget Home sebagai halaman utama
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState(); // Membuat state untuk Home
}

// State dari Home
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Container( 
        decoration: BoxDecoration( 
          gradient: LinearGradient( 
            begin: Alignment.topCenter, 
            end: Alignment.bottomCenter, 
            colors: [Colors.yellow, Colors.purpleAccent, Colors.red], // Warna gradasi
          ),
        ),
      ),
    );
  }
}






































