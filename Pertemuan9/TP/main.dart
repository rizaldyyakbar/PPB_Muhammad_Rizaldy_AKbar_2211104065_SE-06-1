// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Latihan Memilih Gambar',
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,
//       ),
//       home: HalamanPilihGambar(),
//     );
//   }
// }

// class HalamanPilihGambar extends StatefulWidget {
//   @override
//   _HalamanPilihGambarState createState() => _HalamanPilihGambarState();
// }

// class _HalamanPilihGambarState extends State<HalamanPilihGambar> {
//   File? _gambar;
//   final ImagePicker _picker = ImagePicker();

//   Future<void> _pilihGambarDariGaleri() async {
//     final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
//     setState(() {
//       if (pickedFile != null) {
//         _gambar = File(pickedFile.path);
//       }
//     });
//   }

//   Future<void> _pilihGambarDariKamera() async {
//     final pickedFile = await _picker.pickImage(source: ImageSource.camera);
//     setState(() {
//       if (pickedFile != null) {
//         _gambar = File(pickedFile.path);
//       }
//     });
//   }

//   void _hapusGambar() {
//     setState(() {
//       _gambar = null;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Latihan Memilih Gambar'),
//         backgroundColor: Colors.yellow,
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               width: 150,
//               height: 150,
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.grey),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: _gambar != null
//                   ? Image.file(_gambar!, fit: BoxFit.cover)
//                   : Icon(Icons.image_outlined, size: 100, color: Colors.grey),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton.icon(
//                   onPressed: _pilihGambarDariKamera,
//                   icon: Icon(Icons.camera),
//                   label: Text('Kamera'),
//                   style:
//                       ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
//                 ),
//                 SizedBox(width: 10),
//                 ElevatedButton.icon(
//                   onPressed: _pilihGambarDariGaleri,
//                   icon: Icon(Icons.photo),
//                   label: Text('Galeri'),
//                   style:
//                       ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _hapusGambar,
//               child: Text('Hapus Gambar'),
//               style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
