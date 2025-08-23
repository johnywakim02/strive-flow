import 'package:hive_ce/hive.dart';
import 'package:strive_flow/data/services/principle_service/principle_service.dart';
import 'package:strive_flow/domain/models/principle/principle.dart';

class HivePrincipleService implements PrincipleService {
  final Box<Principle> _box;

  HivePrincipleService(this._box);

  @override
  Future<List<Principle>> readAllPrinciples() async {
    try {
      return _box.values.toList();
    } catch (e) {
      return <Principle>[];
    }
  }

  @override
  Future<Principle?> readPrinciple(int index) async {
    try {
      return _box.getAt(index);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> addPrinciple(Principle principle) async {
    try {
      await _box.add(principle);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> updatePrinciple(int index, Principle updatedPrinciple) async {
    try {
      if (_box.getAt(index) == null) return false;
      await _box.putAt(index, updatedPrinciple);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> deletePrinciple(int index) async {
    try {
      if (_box.getAt(index) == null) return false;
      await _box.deleteAt(index);
      return true;
    } catch (e) {
      return false;
    }
  }
}
