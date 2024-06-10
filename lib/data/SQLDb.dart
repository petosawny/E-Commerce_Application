import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlDb {

  static Database? _db;

  Future<Database?> get db async {
    if (_db == Null) {
      _db = await initialDb();
      return _db;
    } else {
      return _db;
    }
  }

  initialDb() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "peter.db");
    Database myDb = await openDatabase(path, onCreate: _onCreate , version: 1 , onUpgrade: _onUpgrade);
    return myDb;
  }

  _onUpgrade(Database? db , int oldVersion , int ewVersion){
    print("upgrade **********") ;
  }

  _onCreate(Database db, int version) async {
    await db.execute("""       
 CREATE TABLE "notes" (
 "id" INTEGER  NOT NULL PRIMARY KEY AUTOINCREAMENT,
 "note" TEXT NOT NULL
 )
 """);
    print("Create Database **********************");
  }

  // Read
  readData(String sql) async {
    Database? mySql   = await db;
    List<Map> respone = await mySql!.rawQuery(sql);
    return respone;
  }
//
// // Insert
//   insetData(String sql) async {
//     Database? mySql = await db;
//     int response    = await mySql!.rawInsert(sql);
//     return response ;
//   }
//
// // Update
//   updateData(String sql) async {
//     Database? mySql = await db;
//     int respone     = await mySql!.rawUpdate(sql);
//     return respone ;
//   }
//
// // Delete
//   deleteData(String sql) async {
//     Database? mySql = await db;
//     int respone     = await mySql!.rawDelete(sql);
//     return respone;
//   }

}
