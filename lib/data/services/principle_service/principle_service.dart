import 'package:strive_flow/domain/models/principle/principle.dart';

abstract class PrincipleService {
  Future<List<Principle>> readAll();
  Future<Principle?> read(int index);
  Future<void> add(Principle principle);
  Future<void> update(int index, Principle newPrinciple);
  Future<void> delete(int index);
}
