//form
import 'package:flutter/material.dart';

 void main() {
   runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
     title: "Belajar Form Flutter",
     home: BelajarForm(),
   ));
 }

 class BelajarForm extends StatefulWidget {//halaman form input
   @override
   _BelajarFormState createState() => _BelajarFormState();
 }

 class _BelajarFormState extends State<BelajarForm> {
   final _formKey = GlobalKey<FormState>(); // mengelola validasi form

   @override
   Widget build(BuildContext context) {
     return Scaffold(// struktur dasar
       appBar: AppBar(
         title: Text("Belajar Form Flutter"),
       ),
       body: Form(
         key: _formKey,
         child: Padding(
           padding: EdgeInsets.all(20.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center, // Menengahkan isi form
             children: [
               TextFormField(// input nama
                 decoration: InputDecoration(
                   hintText: "contoh: Arvita Agus Kurniasari",
                   labelText: "Nama Lengkap",
                   icon: Icon(Icons.person),
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
               SizedBox(height: 20), // Menambahkan jarak antar widget dan submit dgn validasi
               ElevatedButton(
                 child: Text(
                   "Submit",
                   style: TextStyle(color: Colors.white),
                 ),
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.blue,
                 ),
                 onPressed: () {
                   if (_formKey.currentState!.validate()) {
                     ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(content: Text("Form berhasil dikirim")),
                     );
                   }
                 },
               ),
             ],
           ),
         ),
       ),
     );
   }
 }