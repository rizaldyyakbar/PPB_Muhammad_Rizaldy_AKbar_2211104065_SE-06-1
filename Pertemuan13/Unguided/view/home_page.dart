import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/view_model/counter_controller.dart';

class HomePage extends StatelessWidget {
  final NoteController noteController = Get.put(NoteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 165, 206, 242).withOpacity(0.8),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 93, 167),
        title: Text('Daftar Catatan', style: TextStyle(color: Colors.white)),
      ),
      body: Obx(() {
        return noteController.notes.isEmpty
            ? Center(
                child: Text(
                  'Belum ada catatan. Tambahkan sekarang!',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              )
            : ListView.builder(
                itemCount: noteController.notes.length,
                itemBuilder: (context, index) {
                  final note = noteController.notes[index];
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(note['title'] ?? ''),
                      subtitle: Text(note['description'] ?? ''),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          noteController.deleteNoteAt(index);
                        },
                      ),
                    ),
                  );
                },
              );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/add-note');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
