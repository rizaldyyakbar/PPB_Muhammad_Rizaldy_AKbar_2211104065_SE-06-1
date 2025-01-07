import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'students.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE students (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            nim TEXT,
            address TEXT,
            hobby TEXT
          )
        ''');
      },
    );
  }

  Future<int> insertStudent(Map<String, dynamic> row) async {
    Database db = await database;
    return await db.insert('students', row);
  }

  Future<List<Map<String, dynamic>>> getStudents() async {
    Database db = await database;
    return await db.query('students');
  }

  Future<int> updateStudent(Map<String, dynamic> row) async {
    Database db = await database;
    int id = row['id'];
    return await db.update('students', row, where: 'id = ?', whereArgs: [id]);
  }
}
