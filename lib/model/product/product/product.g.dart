// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      productName: json['product_name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'product_name': instance.productName,
      'price': instance.price,
      'description': instance.description,
      'id': instance.id,
    };
