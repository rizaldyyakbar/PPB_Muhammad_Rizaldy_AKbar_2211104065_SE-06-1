import 'package:flutter/material.dart';
import 'db_helper.dart';

class AddStudentFormScreen extends StatefulWidget {
  final Map<String, dynamic>? student; // Optional parameter for editing

  const AddStudentFormScreen({Key? key, this.student}) : super(key: key);

  @override
  _AddStudentFormScreenState createState() => _AddStudentFormScreenState();
}

class _AddStudentFormScreenState extends State<AddStudentFormScreen> {
  final DatabaseHelper _dbHelper = DatabaseHelper();
  final _nameController = TextEditingController();
  final _nimController = TextEditingController();
  final _addressController = TextEditingController();
  final _hobbyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // If editing, pre-fill the fields
    if (widget.student != null) {
      _nameController.text = widget.student!['name'];
      _nimController.text = widget.student!['nim'];
      _addressController.text = widget.student!['address'];
      _hobbyController.text = widget.student!['hobby'];
    }
  }

  void _saveStudent() async {
    if (widget.student == null) {
      // Insert new student
      await _dbHelper.insertStudent({
        'name': _nameController.text,
        'nim': _nimController.text,
        'address': _addressController.text,
        'hobby': _hobbyController.text,
      });
    } else {
      // Update existing student
      await _dbHelper.updateStudent({
        'id': widget.student!['id'],
        'name': _nameController.text,
        'nim': _nimController.text,
        'address': _addressController.text,
        'hobby': _hobbyController.text,
      });
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.student == null
            ? 'Tambah Biodata Mahasiswa'
            : 'Edit Biodata Mahasiswa'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nama',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _nimController,
              decoration: InputDecoration(
                labelText: 'NIM',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Alamat',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _hobbyController,
              decoration: InputDecoration(
                labelText: 'Hobi',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveStudent,
              child: Text(widget.student == null ? 'Simpan' : 'Update'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            ),
          ],
        ),
      ),
    );
  }
}
