import 'package:postgres/postgres.dart';

class PostgresService {
  static Future<PostgreSQLConnection?> connect() async {
    var con = PostgreSQLConnection(
      "0.tcp.ap.ngrok.io",
      19803,
      "PraditSoft",
      username: "postgres",
      password: "123456",
    );
    try {
      if(con.isClosed) await con.open();
      return con;
    } catch(e){
      return null;
    }
  }
}