import 'dart:io';

void main() {
  // Meminta input dari user untuk tinggi piramida
  stdout.write('Masukkan tinggi piramida: ');
  int? tinggi = int.tryParse(stdin.readLineSync() ?? '');

  // Memeriksa apakah input valid
  if (tinggi == null || tinggi <= 0) {
    print('Input tidak valid. Masukkan angka yang lebih besar dari 0.');
    return;
  }

  // Menampilkan piramida
  for (int i = 1; i <= tinggi; i++) {
    // Mencetak spasi
    for (int j = 1; j <= tinggi - i; j++) {
      stdout.write(' ');
    }
    // Mencetak bintang
    for (int k = 1; k <= (2 * i - 1); k++) {
      stdout.write('*');
    }
    // Pindah ke baris baru
    print('');
  }
}
