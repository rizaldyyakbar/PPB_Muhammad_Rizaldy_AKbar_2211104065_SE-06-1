import 'dart:io';

void main() {
  print("Masukkan tinggi piramida: ");
  int? height = int.tryParse(stdin.readLineSync() ?? '');

  if (height == null || height <= 0) {
    print("Mohon masukkan angka positif yang valid.");
    return;
  }

  for (int i = 0; i < height; i++) {
    // Mencetak spasi
    for (int j = 0; j < height - i - 1; j++) {
      stdout.write(" ");
    }

    // Mencetak bintang
    for (int k = 0; k < 2 * i + 1; k++) {
      stdout.write("*");
    }

    // Pindah ke baris baru
    print("");
  }
}
