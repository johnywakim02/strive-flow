import 'package:freezed_annotation/freezed_annotation.dart';

part 'principle.freezed.dart';
part 'principle.g.dart';

@freezed
sealed class Principle with _$Principle {
  const factory Principle({
    required String title,
    required String description,
  }) = _Principle;

  factory Principle.fromJson(Map<String, dynamic> json) => _$PrincipleFromJson(json);
}
