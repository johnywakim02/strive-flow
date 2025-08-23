abstract class PrincipleService {
  Future<List<Map<String, dynamic>>> readAll();
  Future<Map<String, dynamic>?> read(int index);
  Future<void> add(Map<String, dynamic> rawData);
  Future<void> update(int index, Map<String, dynamic> rawData);
  Future<void> delete(int index);
}
