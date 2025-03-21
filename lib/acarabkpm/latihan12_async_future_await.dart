import 'dart:async';

Future<void> main() async {
  print("Siap. Menyanyi");
  
  await Future.delayed(Duration(seconds: 5));
  line();
  
  await Future.delayed(Duration(seconds: 3));
  line2();
  
  await Future.delayed(Duration(seconds: 2));
  line3();
  
  await Future.delayed(Duration(seconds: 1));
  line4();
}

void line() {
  print("Balonku ada lima rupa-rupa warnanya");
} 

void line2() {
  print("Hijau Kuning Kelabu Merahmuda dan Biru");
}

void line3() {
  print("Meletus Balon hijau Dorrrr.......");
}

void line4() {
  print("Hatiku Sangat Kacau Balon ku tinggal empat ku pegang erat-erat........");
}
