// void main(List<String> args){
//   var h = Human();

//   print("Luffy");
//   print("zoro");
//   print("killer");
//   h.getData();
//   print(h.name);

// }
// class Human {
//   String name = "nama karakter one piece";

//   void getData(){
//     name = "hilmy";
//     print("get data [done]");
//   }
// }


import 'dart:async';

void main(List<String> args) async {
  var h = Human();

  print("Luffy");
  print("zoro");
  print("killer");
  
  await h.getData(); // Menunggu getData selesai
  print(h.name);
}

class Human {
  String name = "nama karakter one piece";

  Future<void> getData() async {
    await Future.delayed(Duration(seconds: 3)); // Simulasi delay 3 detik
    name = "hilmy";
    print("get data [done]");
  }
}
