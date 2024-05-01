import 'dart:async';
import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
class DbHelper
{

  //database name and version
  static final _databaseName = "topstech.db";
  static final _databaseVersion = 1;

  //table names
  static final table = 'category';

  //column name
  static final columnId = '_id';
  static final columnname = 'category_name';

  //private constructor
  DbHelper._privateConstructor();

  //database object
  static Database? _database;

  //initialization
  static final DbHelper instance = DbHelper._privateConstructor();

  Future<Database> get database async => _database ??= await _initDatabase();
  _initDatabase()async
  {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase
      (
        path, version: _databaseVersion, onCreate: _onCreate);

  }


  //database get and initialize
  Future<Database?> get database1 async
  {
    if (_database == null)
    {
      _database = await _initDatabase();
    }
    return _database;
  }
  FutureOr<void> _onCreate(Database db, int version) async
  {
    await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY,
            $columnname TEXT NOT NULL 
          )
          ''');
  }
  //insert
  Future<int> insert(Map<String, dynamic> row) async
  {
    Database? db = await instance.database;
    return await db.insert(table, row);
  }
}