import 'dart:io';

String evaluasiNilai(int nilai) {
  if (nilai > 70) {
    return "Nilai A";
  } else if (nilai > 40 && nilai <= 70) {
    return "Nilai B";
  } else if (nilai > 0 && nilai <= 40) {
    return "Nilai C";
  } else {
    return ""; // Teks kosong jika tidak memenuhi kondisi
  }
}

void main() {
  // Minta input dari pengguna
  print('Masukkan nilai: ');
  int nilai = int.parse(stdin.readLineSync()!);

  // Evaluasi nilai dan tampilkan hasilnya
  String hasil = evaluasiNilai(nilai);
  print('$nilai merupakan $hasil');
}
