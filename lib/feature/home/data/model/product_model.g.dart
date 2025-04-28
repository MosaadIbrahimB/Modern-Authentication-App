// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
  id: json['id'] as String,
  image: json['image'] as String,
  title: json['title'] as String,
  rating: json['rating'] as String,
  ratingCount: json['ratingCount'] as String,
  price: json['price'] as String,
  count: (json['count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'title': instance.title,
      'rating': instance.rating,
      'ratingCount': instance.ratingCount,
      'price': instance.price,
      'count': instance.count,
    };
