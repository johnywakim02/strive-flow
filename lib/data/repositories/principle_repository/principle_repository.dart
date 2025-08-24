import 'package:strive_flow/domain/models/principle/principle.dart';

abstract class PrincipleRepository {
  Future<List<Principle>> getAllPrinciples();
  Future<Principle?> getPrinciple(int index);
  Future<void> createPrinciple(Principle principle);
  Future<void> updatePrinciple(int index, Principle updatedPrinciple);
  Future<void> deletePrinciple(int index);
}
