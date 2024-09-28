import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pengenalan Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Riwayat Diri'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(
              16.0), // Padding untuk memberi ruang di sekitar konten
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Memulai dari kiri
            children: [
              ListTile(
                leading: Icon(Icons.person), // Ikon Nama
                title: Text('Nama'),
                subtitle: Text('John Doe'),
              ),
              Divider(), // Garis pembatas
              ListTile(
                leading: Icon(Icons.cake), // Ikon Tanggal Lahir
                title: Text('Tanggal Lahir'),
                subtitle: Text('12 Desember 1990'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.sports_soccer), // Ikon Hobi
                title: Text('Hobi'),
                subtitle: Text('Sepak Bola'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.calendar_today), // Ikon Umur
                title: Text('Umur'),
                subtitle: Text('33 Tahun'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.home), // Ikon Alamat
                title: Text('Alamat'),
                subtitle: Text('Jl. Merdeka No. 10, Jakarta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
