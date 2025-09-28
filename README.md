# Program Entri Data Mahasiswa

# Identitas

* Nama : Hamdani
* NPM  : 07352311110
* Kelas : 5IF
* Mata Kuliah : Pemrograman Mobile
  
# Deskripsi Tugas
Tugas ini adalah membuat program sederhana menggunakan bahasa Dart untuk:

1. Melakukan entri data minimal 10 mahasiswa.
2. Data mahasiswa terdiri dari:

   * Nama Mahasiswa
   * NPM (11 digit, unik)
   * Umur (maksimal 2 digit)
3. Setelah semua data berhasil dimasukkan, program dapat melakukan pencarian data mahasiswa berdasarkan nama.
4. Jika ditemukan, akan ditampilkan detail berupa Nama, NPM, dan Umur mahasiswa tersebut.

# Fitur Program

* Validasi NPM agar harus 11 digit dan tidak boleh duplikat.
* Validasi umur agar berupa angka maksimal 2 digit.
* Menampilkan pesan error jika input salah, lalu meminta input ulang.
* Pencarian mahasiswa secara berulang hingga pengguna mengetik `exit`.

# Contoh Output

=== Masukkan Data 10 Mahasiswa ===
Masukkan nama mahasiswa: Hamdani
Masukkan NPM (11 digit): 07352311110
Masukkan umur: 21
Data untuk 'Hamdani' berhasil ditambahkan! (1/10)

=== Semua data mahasiswa berhasil dimasukkan! ===

Masukkan nama mahasiswa yang ingin dicari (atau ketik 'exit' untuk keluar): Hamdani

Data Mahasiswa:
Nama : Hamdani
NPM  : 07352311110
Umur : 21 Tahun

# Cara Menjalankan Program

1. Pastikan sudah menginstall Dart SDK.
2. Simpan kode program pada file `main.dart`.
3. Jalankan program dengan perintah:

   dart run main.dart

