// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoAdapter extends TypeAdapter<Todo> {
  @override
  final int typeId = 1;

  @override
  Todo read(BinaryReader reader) {
    try{
    final numOfFields = reader.readByte();
    final fields = <int, Product>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Todo(
      deliveryInstruction: fields[0] as String,
      dateTime: fields[1] as String,
      orderId: fields[2] as String,
      cartItems: fields[3] as List<Product>,
        allPrice: fields[4] as String,
      odrid: fields[5] as String,

    );}
    catch(e){}
  }

  @override
  void write(BinaryWriter writer, Todo obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.deliveryInstruction)
      ..writeByte(1)
      ..write(obj.dateTime)
      ..writeByte(2)
      ..write(obj.orderId)
      ..writeByte(3)
      ..write(obj.cartItems)
      ..writeByte(4)
      ..write(obj.allPrice)
      ..writeByte(5)
      ..write(obj.odrid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
