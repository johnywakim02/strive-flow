import 'package:hive_ce/hive.dart';
import 'package:strive_flow/data/services/principle_service/principle_service.dart';
import 'package:strive_flow/domain/models/principle/principle.dart';
class HivePrincipleService implements PrincipleService {
  final Box<Principle> _box;

  HivePrincipleService(this._box);

  @override
  Future<List<Principle>> readAll() async {
    return _box.values.toList();
  }

  @override
  Future<Principle?> read(int index) async {
    return _box.getAt(index);
  }

  @override
  Future<void> add(Principle principle) async {
    await _box.add(principle);
  }

  @override
  Future<void> update(int index, Principle newPrinciple) async {
    await _box.putAt(index, newPrinciple);
  }

  @override
  Future<void> delete(int index) async {
    await _box.deleteAt(index);
  }
}
