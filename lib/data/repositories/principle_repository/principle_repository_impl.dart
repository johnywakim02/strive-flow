import 'package:strive_flow/data/repositories/principle_repository/principle_repository.dart';
import 'package:strive_flow/data/services/principle_service/principle_service.dart';
import 'package:strive_flow/domain/models/principle/principle.dart';

class PrincipleRepositoryImpl implements PrincipleRepository {
  final PrincipleService _service;

  PrincipleRepositoryImpl(this._service);

  @override
  Future<List<Principle>> getAllPrinciples() async {
    return await _service.readAll();
  }

  @override
  Future<Principle?> getPrinciple(int index) async {
    return await _service.read(index); 
  }

  @override
  Future<void> createPrinciple(Principle principle) async {
    await _service.add(principle);   
  }

  @override
  Future<void> updatePrinciple(int index, Principle principle) async {
    await _service.update(index, principle); 
  }

  @override
  Future<void> deletePrinciple(int index) async {
    await _service.delete(index);
  }
}
