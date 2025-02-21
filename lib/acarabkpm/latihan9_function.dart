class Bootcamp {
  // Function 1: Function sederhana tanpa return
  void tampilkan() {
    print("Hello Peserta Bootcamp");
  }

  // Function 2: Function sederhana dengan return
  int munculkanAngka() {
    return 2;
  }

  // Function 3: Function dengan parameter
  int tambahkan(int angka) {
    return angka + 2;
  }

  // Function 4: Pengiriman parameter lebih dari satu
  int kalikan(int x, int y) {
    return x * y;
  }

  // Function 5: Inisialisasi parameter dengan nilai default
  void tampilkanAngka(int n1, {int s1 = 20}) {
    print(n1); 
    print(s1); 
  }
}

void main() {
  // Membuat objek dari class Bootcamp
  var bootcamp = Bootcamp();

  // Memanggil function dalam class
  bootcamp.tampilkan();                   // Function 1
  print(bootcamp.munculkanAngka());       // Function 2
  print(bootcamp.tambahkan(6));          // Function 3
  print(bootcamp.kalikan(2, 2));          // Function 4
  bootcamp.tampilkanAngka(100);             // Function 5
}







