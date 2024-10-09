import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Banyumas',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rekomendasi Wisata Banyumas'),
          backgroundColor: Colors.purple,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            _buildPlaceCard(
              context, // Tambahkan context di sini
              'Curug Cipendok',
              'Curug Cipendok adalah air terjun setinggi 92 meter yang terletak di Desa Karangtengah, Kecamatan Cilongok. Dikelilingi oleh hutan yang hijau dan udara yang sejuk, tempat ini cocok untuk menikmati keindahan alam.',
              'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/301/2023/08/15/curug-cipendok-3242942171.jpg',
            ),
            _buildPlaceCard(
              context,
              'Baturaden',
              'Baturaden merupakan tempat wisata yang terletak di lereng Gunung Slamet. Dikenal dengan pemandangan pegunungan yang indah dan berbagai fasilitas rekreasi seperti pemandian air panas dan taman bunga.',
              'https://upload.wikimedia.org/wikipedia/commons/7/7f/Baturraden_overview_from_ridge%2C_Purwokerto%2C_2015-03-23.jpg',
            ),
            _buildPlaceCard(
              context,
              'Telaga Sunyi',
              'Telaga Sunyi adalah danau kecil yang dikelilingi oleh pepohonan lebat, menciptakan suasana yang tenang dan damai. Sangat cocok untuk menghilangkan penat dari hiruk pikuk kota.',
              'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/06/06/visit-jawa-tengah-378515494.jpg',
            ),
            _buildPlaceCard(
              context,
              'Museum Bank Rakyat Indonesia',
              'Museum Bank Rakyat Indonesia terletak di Purwokerto dan menyimpan sejarah tentang berdirinya BRI serta perkembangan perbankan di Indonesia.',
              'https://d2kihw5e8drjh5.cloudfront.net/eyJidWNrZXQiOiJ1dGEtaW1hZ2VzIiwia2V5IjoicGxhY2VfaW1nLzkzZTViNjUzNDg1YzQ1OGY5MGViNGExNTQ2MTdhMzY3IiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjo2NDAsImhlaWdodCI6NjQwLCJmaXQiOiJpbnNpZGUifSwicm90YXRlIjpudWxsLCJ0b0Zvcm1hdCI6ICJ3ZWJwIn19',
            ),
            _buildPlaceCard(
              context,
              'Taman Andhang Pangrenan',
              'Taman Andhang Pangrenan adalah taman rekreasi di tengah kota yang dilengkapi dengan berbagai fasilitas olahraga dan area bermain anak-anak.',
              'https://radarbanyumas.disway.id/upload/29cb5bbf82ae14fd9c16381784d7aec8.jpg',
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membangun card dari tempat wisata
  Widget _buildPlaceCard(
      BuildContext context, String title, String description, String imageUrl) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Aksi ketika tombol diklik, misalnya menampilkan detail tempat wisata
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Mengunjungi $title'),
                          ),
                        );
                      },
                      child: const Text('Kunjungi Tempat'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
