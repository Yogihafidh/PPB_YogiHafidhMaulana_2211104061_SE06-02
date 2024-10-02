import 'dart:io';

// Fungsi untuk mengecek nilai dan mengembalikan grade
String checkNilai(int nilai) {
  if (nilai > 70) {
    return 'Nilai A';
  } else if (nilai > 40 && nilai <= 70) {
    return 'Nilai B';
  } else if (nilai > 0 && nilai <= 40) {
    return 'Nilai C';
  } else {
    return '';
  }
}

void main() {
  // Meminta input dari user
  stdout.write('Masukkan nilai: ');
  int? nilai = int.tryParse(stdin.readLineSync() ?? '');

  // Memeriksa apakah input valid
  if (nilai != null) {
    // Memanggil fungsi checkNilai dengan nilai input dari user
    String hasil = checkNilai(nilai);
    // Menampilkan hasil
    if (hasil.isNotEmpty) {
      print('$nilai merupakan $hasil');
    } else {
      print('Nilai tidak valid.');
    }
  } else {
    print('Input tidak valid.');
  }
}
