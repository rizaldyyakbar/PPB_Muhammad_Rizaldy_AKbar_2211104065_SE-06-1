import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:place_picker_google/place_picker_google.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static final LatLng _kMapCenter = LatLng(-7.435398381207745,
      109.25073684633264); // Koordinat yang digunakan (contohnya lokasi di Mumbai)
  static final CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

  // API Key untuk Google Maps
  final String apiKey = 'YOUR_GOOGLE_MAPS_API_KEY';

  // Membuat marker
  Set<Marker> _createMarker() {
    return {
      Marker(
        markerId: MarkerId("marker_1"),
        position: _kMapCenter,
        infoWindow: InfoWindow(title: 'Marker 1'),
        rotation: 0,
      ),
      Marker(
        markerId: MarkerId("marker_2"),
        position: LatLng(
            -7.435398381207745, 109.25073684633264), // Koordinat contoh lainnya
      ),
    };
  }

  // Fungsi untuk menampilkan Place Picker
  void _showPlacePicker() async {
    // Menampilkan Place Picker dan menangkap hasilnya
    LocationResult? result = await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => PlacePicker(
        apiKey: apiKey, // API key untuk Google Maps
        onPlacePicked: (LocationResult result) {
          // Menampilkan alamat tempat yang dipilih
          debugPrint("Place picked: ${result.formattedAddress}");
        },
        initialLocation: _kMapCenter, // Menampilkan lokasi awal
        searchInputConfig: const SearchInputConfig(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          autofocus: false,
          textDirection: TextDirection.ltr,
        ),
        searchInputDecorationConfig: const SearchInputDecorationConfig(
          hintText: "Search for a building, street or ...",
        ),
      ),
    ));

    // Pengecekan jika result tidak ada
    if (result != null) {
      debugPrint("Place picked: ${result.formattedAddress}");
    } else {
      debugPrint("No place selected.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Maps with Place Picker Demo'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed:
                _showPlacePicker, // Menampilkan Place Picker saat ikon pencarian ditekan
          ),
        ],
      ),
      body: GoogleMap(
        initialCameraPosition: _kInitialPosition,
        myLocationEnabled: true,
        markers: _createMarker(), // Menambahkan marker pada peta
      ),
    );
  }
}
