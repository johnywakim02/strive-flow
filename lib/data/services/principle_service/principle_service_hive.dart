import 'package:hive_ce/hive.dart';
import 'package:strive_flow/data/services/principle_service/principle_service.dart';
class HivePrincipleService implements PrincipleService {
  final Box<Map<String, dynamic>> _box;

  HivePrincipleService(this._box);

  @override
  Future<List<Map<String, dynamic>>> readAll() async {
    return _box.values.toList();
  }

  @override
  Future<Map<String, dynamic>?> read(int index) async {
    return _box.getAt(index);
  }

  @override
  Future<void> add(Map<String, dynamic> rawData) async {
    await _box.add(rawData);
  }

  @override
  Future<void> update(int index, Map<String, dynamic> rawData) async {
    await _box.putAt(index, rawData);
  }

  @override
  Future<void> delete(int index) async {
    await _box.deleteAt(index);
  }
}
