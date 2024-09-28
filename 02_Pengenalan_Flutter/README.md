Jelaskan apa itu Dart & Flutter beserta contoh widget yang ada pada Flutter.

# Dart
Dart adalah bahasa pemrograman yang dikembangkan oleh Google. Awalnya dirilis pada tahun 2011, Dart dirancang untuk mengembangkan aplikasi frontend yang berjalan di berbagai platform, terutama aplikasi web, mobile, dan desktop. Dart adalah bahasa yang statically-typed dan object-oriented dengan fitur mirip bahasa modern seperti JavaScript, Swift, atau Kotlin.

Fitur Utama Dart:
Compilable ke JavaScript: Dart dapat dikompilasi menjadi JavaScript untuk aplikasi web.
Strong typing: Sistem tipe yang kuat membantu mengurangi kesalahan runtime.
Asynchronous programming: Dart memiliki fitur async dan await untuk menangani operasi asinkron.
Cross-platform: Bahasa yang mendukung pengembangan aplikasi lintas platform seperti mobile, desktop, web, dan server-side.

# Apa itu Flutter?
Flutter adalah framework UI open-source yang dikembangkan oleh Google, digunakan untuk membuat aplikasi natively compiled dari satu codebase, artinya dapat digunakan untuk mengembangkan aplikasi mobile (iOS dan Android), web, dan desktop sekaligus. Flutter menggunakan bahasa Dart sebagai basis kode untuk mempermudah pengembangan lintas platform dengan performa tinggi dan tampilan yang konsisten.

Keunggulan Flutter:

Hot Reload: Fitur yang memungkinkan pengembang melihat perubahan kode secara langsung tanpa kehilangan status aplikasi.
Single Codebase: Mengembangkan satu kode yang dapat digunakan di berbagai platform (Android, iOS, Web, Desktop).
Widget-Based Architecture: Flutter sangat mengandalkan penggunaan widget untuk membuat antarmuka pengguna yang interaktif dan responsif.
High-Performance: Aplikasi Flutter menggunakan mesin rendering yang dioptimalkan untuk grafis berkinerja tinggi.
Contoh Widget yang Ada pada Flutter
Dalam Flutter, segala sesuatu adalah widget. Widget adalah komponen UI seperti tombol, teks, gambar, layout, dll. Berikut beberapa contoh widget yang sering digunakan:

Text

Menampilkan teks.
Contoh:
dart
Copy code
Text('Hello, Flutter!')
Container

Sebuah kotak serbaguna yang dapat digunakan untuk membungkus widget lain dan mengatur layout seperti padding, margin, background, dll.
Contoh:
dart
Copy code
Container(
padding: EdgeInsets.all(16.0),
color: Colors.blue,
child: Text('Hello in a container!'),
)
Row & Column

Digunakan untuk menyusun widget secara horizontal (Row) atau vertikal (Column).
Contoh Row:
dart
Copy code
Row(
children: [
Icon(Icons.star),
Text('Star'),
],
)
Contoh Column:
dart
Copy code
Column(
children: [
Text('Line 1'),
Text('Line 2'),
],
)
Scaffold

Layout dasar untuk aplikasi, menyediakan struktur utama seperti AppBar, Body, Floating Action Button, dll.
Contoh:
dart
Copy code
Scaffold(
appBar: AppBar(title: Text('My App')),
body: Center(child: Text('Hello World')),
)
ListView

Menyediakan daftar scrollable dari widget yang sama atau berbeda jenisnya.
Contoh:
dart
Copy code
ListView(
children: [
ListTile(
leading: Icon(Icons.person),
title: Text('John Doe'),
),
ListTile(
leading: Icon(Icons.person),
title: Text('Jane Doe'),
),
],
)
Stack

Memungkinkan penumpukan widget di atas satu sama lain.
Contoh:
dart
Copy code
Stack(
children: [
Container(color: Colors.red, height: 100, width: 100),
Positioned(
top: 10,
left: 10,
child: Text('Overlay Text'),
),
],
)
GestureDetector

Digunakan untuk mendeteksi input pengguna seperti sentuhan atau klik.
Contoh:
dart
Copy code
GestureDetector(
onTap: () {
print('Box tapped');
},
child: Container(
color: Colors.blue,
height: 100,
width: 100,
),
)
Kesimpulan
Dart adalah bahasa pemrograman yang digunakan oleh Flutter untuk membangun aplikasi lintas platform.
Flutter adalah framework UI yang memungkinkan pengembangan aplikasi untuk mobile, web, dan desktop dari satu codebase.
Flutter menggunakan berbagai widget untuk membangun antarmuka pengguna, mulai dari widget sederhana seperti Text dan Button, hingga yang kompleks seperti ListView dan Stack.
Dengan Dart dan Flutter, pengembang dapat membuat aplikasi yang performatif dengan pengalaman pengguna yang halus.
