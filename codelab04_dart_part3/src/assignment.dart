// assignment 2
// void main() {
//   print(nama("Golden"));
// }

// String nama(String nama) {
//   return "Halo, $nama!";
// }

// assignment 3
// 1
// void main() {
//   tambah(5, 10);
// }

// void tambah(int a, int b) {
//   print("Hasil: ${a + b}");
// }

// 2
// void main() {
//   sapa("Golden");
//   sapa("Golden", "Pagi");
// }

// void sapa(String nama, [String? waktu]) {
//   print("Halo $nama ${waktu ?? ''}");
// }

// 3
// void main() {
//   sapa(nama: "Golden", waktu: "Malam");
//   sapa(nama: "Dart"); // waktu pakai default
// }

// void sapa({required String nama, String waktu = "Siang"}) {
//   print("Halo $nama, Selamat $waktu");
// }

// assignment 4
// void main() {
//   var f = (int x) => x * 2;   // simpan function ke variabel
//   print(f(4));                // output: 8

//   jalankanFungsi(f);          // passing function sebagai parameter
// }

// void jalankanFungsi(Function fn) {
//   print("Hasil: ${fn(5)}");   // output: 10
// }

// assignment 5
// void main() {
//   var daftar = ["apel", "jeruk", "pisang"];

//   daftar.forEach((buah) {
//     print("Saya suka $buah");
//   });
// }


// assignment 6
// Lexical scope
// void main() {
//   var x = 10;

//   void tampilX() {
//     print(x); // bisa akses x karena masih dalam scope main
//   }

//   tampilX(); // output: 10
// }

// Lexical closures
// Function buatCounter() {
//   var hitung = 0;

//   return () {
//     hitung++;
//     return hitung;
//   };
// }

// void main() {
//   var counter1 = buatCounter();
//   print(counter1()); // 1
//   print(counter1()); // 2
//   print(counter1()); // 3
// }


// assignment 7
List<int> hitung(int a, int b) {
  return [a + b, a - b, a * b];
}

void main() {
  var hasil = hitung(10, 5);
  print("Tambah: ${hasil[0]}, Kurang: ${hasil[1]}, Kali: ${hasil[2]}");
}

