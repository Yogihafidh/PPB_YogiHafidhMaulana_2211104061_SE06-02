import 'dart:io';

void main() {
  // Meminta input dari user
  stdout.write('Masukkan sebuah bilangan bulat: ');
  int? angka = int.tryParse(stdin.readLineSync() ?? '');

  // Memeriksa apakah input valid
  if (angka == null || angka <= 0) {
    print('Input tidak valid. Masukkan bilangan bulat positif.');
    return;
  }

  // Memanggil fungsi untuk memeriksa apakah bilangan prima atau bukan
  bool isPrima = cekBilanganPrima(angka);

  // Menampilkan hasil
  if (isPrima) {
    print('$angka adalah bilangan prima.');
  } else {
    print('$angka bukan bilangan prima.');
  }
}

// Fungsi untuk memeriksa apakah bilangan prima
bool cekBilanganPrima(int angka) {
  if (angka < 2) return false;
  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) {
      return false;
    }
  }
  return true;
}
