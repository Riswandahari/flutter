//Page View
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {//tampilan page view
  final PageController _pageController = PageController(viewportFraction: 0.8);
  double _currentPage = 0.0;

  final List<Map<String, dynamic>> items = [
    {"color": Colors.red, "image": "assets/onepice.jpg"},
    {"color": Colors.blue, "image": "assets/onepice1.jpg"},
    {"color": Colors.green, "image": "assets/onepice2.jpg"},
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 2.0; // Memperlambat animasi agar lebih terlihat

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [Colors.red, Colors.yellow, Colors.green],
          ),
        ),
        child: PageView.builder(
          controller: _pageController,
          itemCount: items.length,
          itemBuilder: (context, i) {
            double scale = max(0.8, 1 - (_currentPage - i).abs() * 0.2);//efek scaling di geser
            double rotation = (_currentPage - i).abs() * 0.2;//memperbesar dan memperkecil gambar saat di geser

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 50.0),
              child: Transform.scale(
                scale: scale, // Efek scaling
                child: Transform.rotate(
                  angle: rotation, // Efek rotasi
                  child: Material(
                    elevation: 8.0,
                    borderRadius: BorderRadius.circular(15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(//berpindah halaman animasi
                          MaterialPageRoute(
                            builder: (BuildContext context) => Halamandua(
                              color: items[i]['color'],
                              image: items[i]['image'],
                            ),
                          ),
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Hero(//animasi transisi mulus antar hhalaman
                              tag: "box_$i",
                              child: Container(
                                decoration: BoxDecoration(
                                  color: items[i]['color'],
                                ),
                                child: Image.asset(
                                  items[i]['image'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Halamandua extends StatelessWidget {// menampilkan halaman latar belakang
  final Color color;
  final String image;

  Halamandua({required this.color, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(//latar belakang s
      backgroundColor: color,
      appBar: AppBar(title: Text("Detail Warna")),
      body: Center(
        child: Hero(
          tag: "box_$image",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
