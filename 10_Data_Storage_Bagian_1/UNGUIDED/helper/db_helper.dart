import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:path/path.dart' as path;

class DBHelper {
  static final DBHelper _instance = DBHelper._init();
  static Database? _database;

  DBHelper._init();

  factory DBHelper() => _instance;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('students.db');
    return _database!;
  }

  Future<Database> _initDB(String fileName) async {
    // Mendapatkan direktori aplikasi secara manual
    final dbDir =
        Directory.systemTemp; // Direktori sementara (ubah sesuai kebutuhan)
    final dbPath = path.join(dbDir.path, fileName);

    return await openDatabase(dbPath, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const sql = '''
      CREATE TABLE students (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        nim TEXT,
        address TEXT,
        hobby TEXT
      )
    ''';
    await db.execute(sql);
  }

  Future<int> insertStudent(Map<String, dynamic> data) async {
    final db = await database;
    return await db.insert('students', data);
  }

  Future<List<Map<String, dynamic>>> getStudents() async {
    final db = await database;
    return await db.query('students');
  }
}
