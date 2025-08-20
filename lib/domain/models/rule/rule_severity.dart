import 'package:hive_ce/hive.dart';
import 'package:strive_flow/core/hive/hive_types.dart';

@HiveType(typeId: HiveTypes.ruleSeverity)
enum RuleSeverity {
  @HiveField(0)
  hardRule,

  @HiveField(1)
  softRule,
}