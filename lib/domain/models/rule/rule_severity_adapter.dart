import 'package:hive_ce/hive.dart';
import 'package:strive_flow/core/hive/hive_types.dart';
import 'package:strive_flow/domain/models/rule/rule_severity.dart';

class RuleSeverityAdapter extends TypeAdapter<RuleSeverity> {
  @override
  final int typeId = HiveTypes.ruleSeverity;

  @override
  RuleSeverity read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return RuleSeverity.hardRule;
      case 1:
        return RuleSeverity.softRule;
      default:
        throw Exception('Unknown RuleSeverity value: ${reader.readByte()}');
    }
  }

  @override
  void write(BinaryWriter writer, RuleSeverity obj) {
    switch (obj) {
      case RuleSeverity.hardRule:
        writer.writeByte(0);
        break;
      case RuleSeverity.softRule:
        writer.writeByte(1);
        break;
    }
  }
}
