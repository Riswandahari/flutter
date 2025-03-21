//Dropdown menampilkan daftar pilihan
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

class DropdownExample extends StatefulWidget {//halaman utama home
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String? selectedValue;
  String? selectedImage;
  List<Map<String, String>> items = [
    {'text': 'Item 1', 'image': 'assets/onepice.jpg'},
    {'text': 'Item 2', 'image': 'assets/onepice1.jpg'},
    {'text': 'Item 3', 'image': 'assets/onepice2.jpg'},

  ];

  void _showImageDialog(String imagePath) {//menampilkan gambar
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
  Widget build(BuildContext context) {//menampilkan gambar item sesuai yg di pilij
    return Scaffold(
      appBar: AppBar(title: Text('Dropdown with Images')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownButton<String>(
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
          ],
        ),
      ),
    );
  }
}
