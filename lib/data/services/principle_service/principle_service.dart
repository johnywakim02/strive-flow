import 'package:strive_flow/domain/models/principle/principle.dart';

abstract class PrincipleService {
  Future<List<Principle>> readAllPrinciples();
  Future<Principle?> readPrinciple(int index);
  Future<bool> addPrinciple(Principle principle);
  Future<bool> updatePrinciple(int index, Principle updatedPrinciple);
  Future<bool> deletePrinciple(int index);
}