# Week 13

![img](store_data_golden/img/lib.png)
![img](store_data_golden/img/assets.png)
![img](store_data_golden/img/dependencies.png)
![img](store_data_golden/img/main-1.png)
![img](store_data_golden/img/main-2.png)
![img](store_data_golden/img/main-3.png)
![img](store_data_golden/img/main-4.png)
![img](store_data_golden/img/pizza-1.png)
![img](store_data_golden/img/pizza-2.png)
![img](store_data_golden/img/pizzalist.png)
![img](store_data_golden/img/result.gif)

Soal 5:
Jelaskan maksud kode lebih safe dan maintainable!
- Lebih Safe (Aman): Menghindari kesalahan pengetikan (typo).

Tanpa Konstanta: Jika kita mengetik json['pizzaNam'] (kurang huruf 'e'), editor kode tidak akan menganggapnya error, tetapi aplikasi akan error saat dijalankan (runtime error) atau data menjadi null.

Dengan Konstanta: Jika kita salah ketik nama variabel json[keyNam], editor kode akan langsung memberi garis merah (compile-time error) karena variabel tersebut tidak dikenali. Ini mencegah bug lolos ke aplikasi jadi.

- Lebih Maintainable (Mudah Dikelola): Memudahkan perubahan di masa depan.

Jika backend mengubah nama kunci JSON dari 'pizzaName' menjadi 'productName', kita hanya perlu mengubah satu baris kode saja (di bagian deklarasi const String keyName = ...). Kita tidak perlu mencari dan mengganti satu per satu di seluruh file proyek (fromJson, toJson, dll).

Soal 8:
Jelaskan maksud kode pada langkah 3 dan 7 !
- Penjelasan Kode Langkah 3 (Method writeFile)

Method writeFile adalah fungsi asynchronous (async) yang bertugas menulis data teks ke dalam penyimpanan lokal perangkat.

- Penjelasan Kode Langkah 7 (Proses Run/Read)
Pada langkah ini, alur yang terjadi adalah:

Aplikasi dijalankan, initState otomatis membuat file berisi Nama & NIM di background (tanpa tampil di layar dulu).

Saat pengguna menekan tombol "Read File", method readFile() dipanggil.

myFile.readAsString() membaca isi file teks dari penyimpanan lokal.

Setelah isi didapat, setState(() { fileText = content; }) dijalankan. Fungsi setState ini memberitahu Flutter bahwa ada data yang berubah, sehingga Flutter melakukan Rebuild (menggambar ulang) tampilan UI untuk menampilkan teks Nama & NIM yang baru saja dibaca.


