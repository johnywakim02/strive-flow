// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'principle.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PrincipleAdapter extends TypeAdapter<Principle> {
  @override
  final typeId = 0;

  @override
  Principle read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Principle(
      title: fields[0] as String,
      description: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Principle obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PrincipleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Principle _$PrincipleFromJson(Map<String, dynamic> json) => _Principle(
  title: json['title'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$PrincipleToJson(_Principle instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };
