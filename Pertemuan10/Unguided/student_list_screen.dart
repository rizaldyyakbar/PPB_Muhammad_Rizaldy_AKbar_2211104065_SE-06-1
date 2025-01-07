import 'package:flutter/material.dart';
import 'db_helper.dart';
import 'form_screen.dart';

class StudentListScreen extends StatefulWidget {
  @override
  _StudentListScreenState createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  final DatabaseHelper _dbHelper = DatabaseHelper();
  List<Map<String, dynamic>> _students = [];

  @override
  void initState() {
    super.initState();
    _loadStudents();
  }

  void _loadStudents() async {
    final data = await _dbHelper.getStudents();
    setState(() {
      _students = data;
    });
  }

  void _navigateToAddStudent({Map<String, dynamic>? student}) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddStudentFormScreen(student: student),
      ),
    );
    _loadStudents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata Mahasiswa'),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: _students.length,
        itemBuilder: (context, index) {
          final student = _students[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ListTile(
              title: Text(student['name']),
              subtitle: Text(
                'NIM: ${student['nim']}\nAlamat: ${student['address']}\nHobi: ${student['hobby']}',
              ),
              isThreeLine: true,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit, color: Colors.blue),
                    onPressed: () => _navigateToAddStudent(student: student),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _navigateToAddStudent(),
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
