// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RuleAdapter extends TypeAdapter<Rule> {
  @override
  final typeId = 1;

  @override
  Rule read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Rule(
      title: fields[0] as String,
      type: fields[1] as RuleType,
      severity: fields[2] as RuleSeverity,
      description: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Rule obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.severity)
      ..writeByte(3)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RuleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Rule _$RuleFromJson(Map<String, dynamic> json) => _Rule(
  title: json['title'] as String,
  type: $enumDecode(_$RuleTypeEnumMap, json['type']),
  severity: $enumDecode(_$RuleSeverityEnumMap, json['severity']),
  description: json['description'] as String,
);

Map<String, dynamic> _$RuleToJson(_Rule instance) => <String, dynamic>{
  'title': instance.title,
  'type': _$RuleTypeEnumMap[instance.type]!,
  'severity': _$RuleSeverityEnumMap[instance.severity]!,
  'description': instance.description,
};

const _$RuleTypeEnumMap = {
  RuleType.selfRule: 'selfRule',
  RuleType.boundary: 'boundary',
  RuleType.standards: 'standards',
};

const _$RuleSeverityEnumMap = {
  RuleSeverity.hardRule: 'hardRule',
  RuleSeverity.softRule: 'softRule',
};
