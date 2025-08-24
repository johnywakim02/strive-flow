import 'package:flutter/material.dart';
import 'package:strive_flow/data/repositories/principle_repository/principle_repository.dart';
import 'package:strive_flow/domain/models/principle/principle.dart';

class CreatePrincipleViewModel extends ChangeNotifier{
  final PrincipleRepository _repository;

  CreatePrincipleViewModel({required PrincipleRepository repository})
      : _repository = repository;

  List<Principle> _principles = [];
  List<Principle> get principles => _principles;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<void> loadPrinciples() async {
    _setLoading(true);
    try {
      _principles = await _repository.getAllPrinciples();
      _error = null;
    } catch (e) {
      _error = 'Failed to load principles';
    }
    _setLoading(false);
  }

  Future<void> addPrinciple(String title, String description) async {
    if (title.trim().isEmpty) return;
    final principle = Principle(title: title.trim(), description: description.trim());

    try {
      await _repository.createPrinciple(principle);
      _principles = await _repository.getAllPrinciples();
      notifyListeners();
    } catch (e) {
      _error = 'Failed to add principle';
      notifyListeners();
    }
  }

  Future<void> deletePrinciple(int index) async {
    try {
      await _repository.deletePrinciple(index);
      _principles = await _repository.getAllPrinciples();
      notifyListeners();
    } catch (e) {
      _error = 'Failed to delete principle';
      notifyListeners();
    }
  }
}