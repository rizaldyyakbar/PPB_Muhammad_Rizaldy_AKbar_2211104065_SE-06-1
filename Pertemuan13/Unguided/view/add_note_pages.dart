import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/view_model/counter_controller.dart';

class AddNotePage extends StatelessWidget {
  final NoteController noteController = Get.find<NoteController>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Catatan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Judul'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Deskripsi'),
              maxLines: 3,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (titleController.text.isNotEmpty &&
                    descriptionController.text.isNotEmpty) {
                  noteController.addNote(
                    titleController.text,
                    descriptionController.text,
                  );
                  Get.back(); // Kembali ke halaman utama
                } else {
                  Get.snackbar(
                    'Error',
                    'Judul dan deskripsi tidak boleh kosong!',
                    snackPosition: SnackPosition.BOTTOM,
                  );
                }
              },
              child: Text('Simpan Catatan'),
            ),
          ],
        ),
      ),
    );
  }
}
