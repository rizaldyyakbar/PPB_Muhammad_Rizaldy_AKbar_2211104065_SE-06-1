import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Rekomendasi Wisata',
              style: TextStyle(color: Colors.white)),
          leading: const Icon(Icons.menu, color: Colors.white),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Baturraden',
                style: TextStyle(fontSize: 24),
              ),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Baturaden.jpg/1200px-Baturaden.jpg', // Ganti dengan URL gambar Anda
                width: 200,
              ),
              const Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  'Baturraden adalah sebuah objek wisata alam yang terletak di lereng Gunung Slamet sekitar 
                  15 kilometer dari pusat kota Purwokerto, Kabupaten Banyumas. Terkenal dengan pemandangan 
                  alamnya yang indah dan udara yang sejuk, Baturraden menjadi destinasi favorit wisatawan lokal maupun mancanegara.',
                  textAlign: TextAlign.justify,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Tambahkan aksi saat tombol ditekan, misalnya navigasi ke halaman detail
                  print('Kunjungi Baturraden');
                },
                child: const Text('Kunjungi Sekarang'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
