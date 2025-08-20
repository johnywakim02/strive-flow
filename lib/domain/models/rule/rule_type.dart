import 'package:hive_ce/hive.dart';
import 'package:strive_flow/core/hive/hive_types.dart';

@HiveType(typeId: HiveTypes.ruleType)
enum RuleType {
  @HiveField(0)
  selfRule,

  @HiveField(1)
  boundary,
  
  @HiveField(2)
  standards,
}