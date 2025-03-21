// navigation
import 'package:flutter/material.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Drawer Example', 
      theme: ThemeData(
        primarySwatch: Colors.blue, // Tema utama aplikasi
        scaffoldBackgroundColor: Colors.white, // Warna latar belakang default
      ),
      home: HomeScreen(), // Halaman utama aplikasi
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// State untuk HomeScreen
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigation Drawer Example')), 
      drawer: MyNavigationDrawer(), // Drawer navigasi
      body: Center(child: Text('Main Content', style: TextStyle(fontSize: 18))), // Konten utama
    );
  }
}

// Widget drawer navigasi (StatelessWidget)
class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Header Drawer dengan informasi pengguna
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            accountName: Text("John Doe", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            accountEmail: Text("johndoe@example.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 40),
            ),
            otherAccountsPictures: [ // Ikon untuk akun lain
              CircleAvatar(backgroundColor: Colors.white, child: Icon(Icons.group, size: 30)),
              CircleAvatar(backgroundColor: Colors.white, child: Icon(Icons.work, size: 30)),
            ],
          ),
          // Menu navigasi "Home"
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            subtitle: Text('Main section'),
            onTap: () {
              Navigator.pop(context); // Tutup drawer
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())); // Navigasi ke Home
            },
          ),
          // Menu navigasi "Settings"
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context); // Tutup drawer
              Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen())); // Navigasi ke Settings
            },
          ),
          Divider(), // Garis pemisah
          // Header untuk akun lain
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Other Accounts', style: TextStyle(color: Colors.grey, fontSize: 12)),
          ),
          // Menu navigasi "Work Account"
          ListTile(
            leading: Icon(Icons.business),
            title: Text('Work Account'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => WorkAccountScreen())); // Navigasi ke Work Account
            },
          ),
          // Menu navigasi "School Account"
          ListTile(
            leading: Icon(Icons.school),
            title: Text('School Account'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => SchoolAccountScreen())); // Navigasi ke School Account
            },
          ),
        ],
      ),
    );
  }
}

// Halaman "Settings"
class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Center(child: Text('Settings Page', style: TextStyle(fontSize: 18))),
    );
  }
}

// Halaman "Work Account"
class WorkAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Work Account')),
      body: Center(child: Text('Work Account Page', style: TextStyle(fontSize: 18))),
    );
  }
}

// Halaman "School Account"
class SchoolAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('School Account')),
      body: Center(child: Text('School Account Page', style: TextStyle(fontSize: 18))),
    );
  }
}
