import 'package:get/get.dart';

class NoteController extends GetxController {
  // Daftar catatan berupa list yang dapat direaktifkan
  var notes = <Map<String, String>>[].obs;

  // Fungsi untuk menambahkan catatan baru
  void addNote(String title, String description) {
    notes.add({'title': title, 'description': description});
  }

  // Fungsi untuk menghapus catatan berdasarkan indeks
  void deleteNoteAt(int index) {
    notes.removeAt(index);
  }
}
