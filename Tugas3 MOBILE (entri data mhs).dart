import 'dart:io';

void main() {
  Map<String, Map<String, String>> dataMahasiswa = {};
  int jumlahMinimal = 10;

  print("=== Masukkan Data $jumlahMinimal Mahasiswa ===");

  int count = 0;
  while (count < jumlahMinimal) {
    stdout.write("Masukkan nama mahasiswa: ");
    String? nama = stdin.readLineSync();

    // Input NPM (harus 11 digit & unik)
    String? npm;
    while (true) {
      stdout.write("Masukkan NPM (11 digit): ");
      npm = stdin.readLineSync();

      if (npm == null || !RegExp(r'^\d{11}$').hasMatch(npm)) {
        print("NPM tidak valid! Harus 11 digit angka.\n");
        continue;
      }

      // cek apakah NPM sudah ada
      var duplikat = dataMahasiswa.entries.firstWhere(
        (entry) => entry.value["NPM"] == npm,
        orElse: () => MapEntry("", {}),
      );

      if (duplikat.key.isNotEmpty) {
        print(
          "NPM sudah digunakan oleh '${duplikat.key}'! "
          "Silakan masukkan NPM yang berbeda.\n",
        );
        continue;
      }

      break; // NPM valid dan unik
    }

    // Input umur
    String? umur;
    while (true) {
      stdout.write("Masukkan umur: ");
      umur = stdin.readLineSync();
      if (umur != null && RegExp(r'^\d{1,2}$').hasMatch(umur)) {
        break;
      } else {
        print(
          "Input umur tidak valid! Silakan masukkan angka maksimal 2 digit.\n",
        );
      }
    }

    if (nama != null && nama.isNotEmpty) {
      dataMahasiswa[nama] = {"NPM": npm!, "Umur": umur!};
      count++;
      print(
        "Data untuk '$nama' berhasil ditambahkan! ($count/$jumlahMinimal)\n",
      );
    } else {
      print("Nama tidak boleh kosong, silakan ulangi.\n");
    }
  }

  print("\n=== Semua data mahasiswa berhasil dimasukkan! ===");

  // Mode pencarian berulang
  while (true) {
    stdout.write(
      "\nMasukkan nama mahasiswa yang ingin dicari (atau ketik 'exit' untuk keluar): ",
    );
    String? cari = stdin.readLineSync();

    if (cari == "exit") {
      print("Program selesai.");
      break;
    }

    if (cari != null && dataMahasiswa.containsKey(cari)) {
      print("\nData Mahasiswa:");
      print("Nama : $cari");
      print("NPM  : ${dataMahasiswa[cari]!['NPM']}");
      print("Umur : ${dataMahasiswa[cari]!['Umur']} Tahun");
    } else {
      print("Data dengan nama '$cari' tidak ditemukan.");
    }
  }
}
