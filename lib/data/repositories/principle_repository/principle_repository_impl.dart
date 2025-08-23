import 'package:strive_flow/data/repositories/principle_repository/principle_repository.dart';
import 'package:strive_flow/data/services/principle_service/principle_service.dart';
import 'package:strive_flow/domain/models/principle/principle.dart';

class PrincipleRepositoryImpl implements PrincipleRepository {
  final PrincipleService _service;

  PrincipleRepositoryImpl(this._service);

  @override
  Future<List<Principle>> getAllPrinciples() async {
    try {
      final rawList = await _service.readAll();
      return rawList.map((raw) => Principle.fromJson(raw)).toList();
    } catch (e) {
      return [];
    }
  }

  @override
  Future<Principle?> getPrinciple(int index) async {
    try {
      final raw = await _service.read(index);
      return raw != null ? Principle.fromJson(raw) : null;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> createPrinciple(Principle principle) async {
    try {
      await _service.add(principle.toJson());
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> updatePrinciple(int index, Principle principle) async {
    try {
      await _service.update(index, principle.toJson());
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> deletePrinciple(int index) async {
    try {
      await _service.delete(index);
      return true;
    } catch (e) {
      return false;
    }
  }
}
