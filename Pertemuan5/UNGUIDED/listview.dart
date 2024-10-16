import 'package:flutter/material.dart';

class wisata {
  final String nama;
  final String url;
  final String deskripsi;

  wisata({required this.nama, required this.url, required this.deskripsi});
}

class listviewscreen extends StatelessWidget {
  final List<wisata> wisataBanyumas = [
    wisata(
        nama: 'Baturraden',
        url:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Baturaden.jpg/1200px-Baturaden.jpg',
        deskripsi:
            'Baturraden adalah sebuah objek wisata alam yang terletak di lereng Gunung Slamet sekitar 15 kilometer dari pusat kota Purwokerto.'),
    wisata(
        nama: 'Curug Bayan',
        url:
            'https://visitjawatengah.jatengprov.go.id/assets/images/67971113-2b56-4908-9b17-ec4671c9efc8.jpeg',
        deskripsi:
            'destinasi liburan yang sempurna untuk kamu yang ingin menikmati keindahan alam tanpa harus bepergian jauh. Akses yang mudah, fasilitas lengkap, harga tiket yang terjangkau, serta berbagai aktivitas seru yang bisa dilakukan menjadikan Curug Bayan sebagai pilihan yang tidak boleh dilewatkan'),
    wisata(
        nama: 'Hutan Pinus Limpakuwus',
        url:
            'https://dolanbanyumas.banyumaskab.go.id/assets/gambar_objek/hutan-pinus-limpakuwus.jpg',
        deskripsi:
            'Hutan Pinus Limpakuwus tidak seperti hutan lainnya yang mungkin sering terasa menyeramkan. Hutan ini sudah ditata dan dikelola sedemikian rupa dan ada wahana bermain juga, sehingga cocok sebagai salah satu destinasi wisata keluarga yang ramah anak dengan pemandangan yang mempesona.'),
    wisata(
        nama: 'Bukit Tengtung',
        url:
            'https://radarbanyumas.disway.id//upload/180c86d24462a5580e61c10212c680f5.jpg',
        deskripsi:
            'Bukit Tengtung menawarkan pesona alam yang menakjubkan. Dikelilingi oleh hijaunya pepohonan dan tanaman, bukit ini memberikan perasaan kedamaian dan ketenangan.')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Wisata Purwokerto',
                style: TextStyle(
                  fontFamily:
                      'Roboto', // Menggunakan font Roboto yang tersedia di Flutter
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 3.0,
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://www.agoda.com/wp-content/uploads/2024/04/Featured-image-Purwokertos-city-square-Banyumas-Indonesia-1244x700.jpg',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 0, 255),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(15)),
                        child: Image.network(
                          wisataBanyumas[index].url,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              wisataBanyumas[index].nama,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 176, 39, 130),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              wisataBanyumas[index].deskripsi,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(height: 12),
                            ElevatedButton(
                              onPressed: () {
                                print(
                                    'Anda memilih ${wisataBanyumas[index].nama}');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 255, 255),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Text('Kunjungi Sekarang'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: wisataBanyumas.length,
            ),
          ),
        ],
      ),
    );
  }
}
