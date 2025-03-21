//gradient, pageview, dropdown
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {//membangun aplikasi flutter
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DropdownExample(),
    );
  }
}

class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {//halaman utama
  String? selectedValue;
  String? selectedImage;
  List<Map<String, String>> items = [
    {'text': 'Item 1', 'image': 'assets/onepice.jpg'},
    {'text': 'Item 2', 'image': 'assets/onepice1.jpg'},
    {'text': 'Item 3', 'image': 'assets/onepice2.jpg'},
    
  ];

  void _showImageDialog(String imagePath) {//menampilkan dialog gambar
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(imagePath, width: 200, height: 200),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Tutup'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dropdown with Images')),
      body: Container(
        decoration: BoxDecoration(//gradient
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButton<String>(//daftar item dengan gambar kecil
                hint: Text('Pilih Item'),
                value: selectedValue,
                onChanged: (newValue) {
                  setState(() {
                    selectedValue = newValue;
                    selectedImage = items.firstWhere((item) => item['text'] == newValue)['image'];
                  });
                  if (selectedImage != null) {
                    _showImageDialog(selectedImage!);
                  }
                },
                items: items.map((item) {
                  return DropdownMenuItem<String>(
                    value: item['text'],
                    child: Row(
                      children: [
                        Image.asset(
                          item['image']!,
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(width: 10),
                        Text(item['text']!),
                      ],
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Container(//menampilkan gambar secara geser
                height: 200,
                child: PageView(
                  children: items.map((item) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        item['image']!,
                        width: 100,
                        height: 100,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
