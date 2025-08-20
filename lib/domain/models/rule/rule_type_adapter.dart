import 'package:hive_ce/hive.dart';
import 'package:strive_flow/core/hive/hive_types.dart';
import 'package:strive_flow/domain/models/rule/rule_type.dart';

class RuleTypeAdapter extends TypeAdapter<RuleType> {
  @override
  final int typeId = HiveTypes.ruleType;

  @override
  RuleType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return RuleType.selfRule;
      case 1:
        return RuleType.boundary;
      case 2:
        return RuleType.standards;
      default:
        throw Exception('Unknown RuleType value: ${reader.readByte()}');
    }
  }

  @override
  void write(BinaryWriter writer, RuleType obj) {
    switch (obj) {
      case RuleType.selfRule:
        writer.writeByte(0);
        break;
      case RuleType.boundary:
        writer.writeByte(1);
        break;
      case RuleType.standards:
        writer.writeByte(2);
        break;
    }
  }
}
