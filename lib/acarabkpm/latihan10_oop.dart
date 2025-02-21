// Enkapsulasi: Menggunakan private variable dengan _ (underscore)
class Kendaraan {
  String _merk;
  int _tahunProduksi;

  // Constructor
  Kendaraan(this._merk, this._tahunProduksi);

  // Getter untuk mengakses private variable
  String get merk => _merk;
  int get tahunProduksi => _tahunProduksi;

  // Setter untuk mengubah private variable
  set merk(String merkBaru) {
    _merk = merkBaru;
  }

  set tahunProduksi(int tahunBaru) {
    if (tahunBaru > 1800) {
      _tahunProduksi = tahunBaru;
    }
  }

  // Method yang bisa dioverride
  void info() {
    print("Kendaraan $_merk diproduksi pada tahun $_tahunProduksi.");
  }
}

// Inheritance: Motor mewarisi Kendaraan
class Motor extends Kendaraan {
  int _cc;

  Motor(String merk, int tahunProduksi, this._cc) : super(merk, tahunProduksi);

  // Polymorphism: Override method dari parent class
  @override
  void info() {
    print("Motor $_merk dengan kapasitas $_cc cc diproduksi pada tahun $_tahunProduksi.");
  }
}

void main() {
  // Membuat objek dari kelas Kendaraan
  Kendaraan kendaraan = Kendaraan("Toyota", 2020);
  kendaraan.info();

  // Membuat objek dari kelas Motor
  Motor motor = Motor("Honda", 2022, 150);
  motor.info();
}
