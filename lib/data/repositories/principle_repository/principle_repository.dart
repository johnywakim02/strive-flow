import 'package:strive_flow/domain/models/principle/principle.dart';

abstract class PrincipleRepository {
  Future<List<Principle>> getAllPrinciples();
  Future<Principle?> getPrinciple(int index);
  Future<bool> createPrinciple(Principle principle);
  Future<bool> updatePrinciple(int index, Principle updatedPrinciple);
  Future<bool> deletePrinciple(int index);
}
