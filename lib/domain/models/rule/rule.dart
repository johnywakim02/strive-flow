import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:strive_flow/core/hive/hive_types.dart';
import 'package:strive_flow/domain/models/rule/rule_severity.dart';
import 'package:strive_flow/domain/models/rule/rule_type.dart';

part 'rule.freezed.dart';
part 'rule.g.dart';

@freezed
@HiveType(typeId: HiveTypes.rule)
sealed class Rule with _$Rule {
  const factory Rule({
    @HiveField(0) required String title,
    @HiveField(1) required RuleType type,
    @HiveField(2) required RuleSeverity severity,
    @HiveField(3) required String description,
  }) = _Rule;

  factory Rule.fromJson(Map<String, dynamic> json) => _$RuleFromJson(json);
}
