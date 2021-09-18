// GENERATED CODE - DO NOT MODIFY BY HAND


// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

import 'package:hive/hive.dart';
import 'package:sq_cafe_user_app/models/product.dart';

import 'order_product.dart';

class NoteAdapter extends TypeAdapter<OrderProduct> {
  @override
  final typeId = 1;

  @override
  OrderProduct read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OrderProduct(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as List<Product>,

    );
  }

  @override
  void write(BinaryWriter writer, OrderProduct obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.deliveryInstruction)
      ..writeByte(1)
      ..write(obj.dateTime)
      ..writeByte(2)
      ..write(obj.orderId)
      ..writeByte(3)
      ..write(obj.cartItems);
  }
}
