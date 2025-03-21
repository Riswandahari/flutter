//form, check box
import 'package:flutter/material.dart';

 void main() {// halaman utama
   runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
     title: "Belajar Form Flutter",
     home: BelajarForm(),
   ));
 }

 class BelajarForm extends StatefulWidget {// menglola logika dan ui form
   @override
   _BelajarFormState createState() => _BelajarFormState();
 }

 class _BelajarFormState extends State<BelajarForm> {// mengelola validasi form
   final _formKey = GlobalKey<FormState>();
   double nilaiSlider = 1;
   bool nilaiCheckBox = false;
   bool nilaiSwitch = true;

   @override
   Widget build(BuildContext context) {
     return Scaffold(// struktur ui
       appBar: AppBar(
         title: const Text("Belajar Form Flutter"),
       ),
       body: Form(// mengelola validasi input
         key: _formKey,
         child: SingleChildScrollView(
           child: Container(
             padding: const EdgeInsets.all(20.0),
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextFormField(//prtama untuk input nama
                     decoration: InputDecoration(
                       hintText: "contoh: Riswanda Hari Saputra",
                       labelText: "Nama Lengkap",
                       icon: const Icon(Icons.people),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5.0),
                       ),
                     ),
                     validator: (value) {
                       if (value == null || value.isEmpty) {
                         return 'Nama tidak boleh kosong';
                       }
                       return null;
                     },
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextFormField(
                     obscureText: true,
                     decoration: InputDecoration(
                       labelText: "Password",
                       icon: const Icon(Icons.security),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5.0),
                       ),
                     ),
                     validator: (value) {
                       if (value == null || value.isEmpty) {
                         return 'Password tidak boleh kosong';
                       }
                       return null;
                     },
                   ),
                 ),
                 CheckboxListTile(
                   title: const Text('Belajar Dasar Flutter'),
                   subtitle: const Text('Dart, widget, http'),
                   value: nilaiCheckBox,
                   activeColor: Colors.deepPurpleAccent,
                   onChanged: (value) {
                     setState(() {
                       nilaiCheckBox = value ?? false;
                     });
                   },
                 ),
                 SwitchListTile(
                   title: const Text('Backend Programming'),
                   subtitle: const Text('Dart, NodeJs, PHP, Java, dll'),
                   value: nilaiSwitch,
                   activeTrackColor: Colors.pink[100],
                   activeColor: Colors.red,
                   onChanged: (value) {
                     setState(() {
                       nilaiSwitch = value;
                     });
                   },
                 ),
                 Slider(
                   value: nilaiSlider,
                   min: 0,
                   max: 100,
                   onChanged: (value) {
                     setState(() {
                       nilaiSlider = value;
                     });
                   },
                 ),
                 ElevatedButton(
                   child: const Text("Submit",
                       style: TextStyle(color: Colors.white)),
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.blue,
                   ),
                   onPressed: () {
                     if (_formKey.currentState!.validate()) {
                       // Proses validasi sukses
                     }
                   },
                 ),
               ],
             ),
           ),
         ),
       ),
     );
   }
 }