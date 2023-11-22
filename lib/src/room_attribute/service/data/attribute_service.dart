import 'package:flutter_learn/src/room_attribute/model/attribute.dart';
import 'package:flutter_learn/src/room_attribute/service/postgres_service.dart';

class AttributeService {
  Future<List<AttributeModel>> getAttribute() async {
    var connect = await PostgresService.connect();
    if (connect == null) return [];

    String q = """SELECT * FROM attributes as attrs
      WHERE attrs.active IS true
     ORDER BY id DESC""";

    List<AttributeModel> attrs = [];
    
    try {
      final List<Map<String, Map<String, dynamic>>> data =
          await connect.mappedResultsQuery(q);

      for (int i = 0; i < data.length; i++) {
        AttributeModel attr = AttributeModel.fromJson(data[i]["attributes"]!);
        attrs.add(attr);
      }
      return attrs;
    } catch (e) {
      return [];
    } finally {
      connect.close();
    }
  }
}
