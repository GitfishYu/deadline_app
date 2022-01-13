// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deadline_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeadlineModelAdapter extends TypeAdapter<DeadlineModel> {
  @override
  final int typeId = 0;

  @override
  DeadlineModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeadlineModel(
      title: fields[0] as String,
      note: fields[1] as String,
      start: fields[2] as String,
      end: fields[3] as String,
      isCompleted: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, DeadlineModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.note)
      ..writeByte(2)
      ..write(obj.start)
      ..writeByte(3)
      ..write(obj.end)
      ..writeByte(4)
      ..write(obj.isCompleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeadlineModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
