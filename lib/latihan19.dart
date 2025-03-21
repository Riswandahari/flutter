import 'package:flutter/material.dart'; 
//memanggil menggunakan nama route
//import 'package:projects4/latihan19.dart'; 

void main() {
  runApp(MaterialApp(
    initialRoute: '/', // Rute awal aplikasi
    onGenerateRoute: RouteGenerator.generateRoute, // Menangani navigasi
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Belajar Routing')), 
      body: Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            ElevatedButton( // Tombol untuk ke AboutPage
              onPressed: () => Navigator.pushNamed(context, '/about'), 
              child: Text('Tap Untuk ke AboutPage'), 
            ),
            ElevatedButton( // Tombol untuk halaman yang tidak ada
              onPressed: () => Navigator.pushNamed(context, '/halaman-404'), 
              child: Text('Tap Halaman lain'), 
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tentang Aplikasi')), 
      body: Center( // Menempatkan konten di tengah layar
        child: ElevatedButton( // Tombol kembali
          onPressed: () => Navigator.pop(context), // Kembali ke halaman sebelumnya
          child: Text('Kembali'), 
        ),
      ),
    );
  }
}

// Kelas RouteGenerator untuk menangani navigasi dinamis
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) { // Periksa rute yang diminta
      case '/': // Jika rute adalah '/'
        return MaterialPageRoute(builder: (_) => HomePage()); // Tampilkan HomePage
      case '/about': // Jika rute adalah '/about'
        return MaterialPageRoute(builder: (_) => AboutPage()); // Tampilkan AboutPage
      default: // Jika rute tidak ditemukan
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: Text('Error 404')), // AppBar dengan judul error
            body: Center( // Menampilkan pesan error di tengah layar
              child: Text(
                'Halaman tidak ditemukan!', // Pesan error
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Gaya teks
              ),
            ),
          ),
        );
    }
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MainPage(),
//   ));
// }

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2, // Jumlah tab
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Belajar Tab Navigation'),
//           backgroundColor: Colors.blue,
//           bottom: TabBar(
//             indicatorColor: Colors.white,
//             labelColor: Colors.white,
//             tabs: [
//               Tab(icon: Icon(Icons.home), text: "Home"),
//               Tab(icon: Icon(Icons.info), text: "About"),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             HomePage(),
//             AboutPage(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () {
//           Route route = MaterialPageRoute(builder: (context) => AboutPage());
//           Navigator.push(context, route);
//         },
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.blue,
//           foregroundColor: Colors.white,
//           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//           textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//         child: Text('Tap Untuk ke AboutPage'),
//       ),
//     );
//   }
// }

// class AboutPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () {
//           Navigator.pop(context);
//         },
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.blue,
//           foregroundColor: Colors.white,
//           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//           textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//         child: Text('Kembali'),
//       ),
//     );
//   }
// }