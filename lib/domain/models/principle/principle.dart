import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:strive_flow/core/hive/hive_types.dart';

part 'principle.freezed.dart';
part 'principle.g.dart';

@freezed
@HiveType(typeId: HiveTypes.principle)
sealed class Principle with _$Principle {
  const factory Principle({
    @HiveField(0) required String title,
    @HiveField(1) required String description,
  }) = _Principle;

  factory Principle.fromJson(Map<String, dynamic> json) => _$PrincipleFromJson(json);
}
