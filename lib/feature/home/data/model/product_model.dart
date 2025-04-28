import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';

part 'product_model.g.dart';

@freezed
@JsonSerializable()
class ProductModel with _$ProductModel {
  @override
  final String id;
  @override
  final String image;
  @override
  final String title;
  @override
  final String rating;
  @override
  final String ratingCount;
  @override
  final String price;
  @override
   int count;

     ProductModel({

    required this.id,
    required this.image,
    required this.title,
    required this.rating,
    required this.ratingCount,
    required this.price,
    this.count=0,
  });

  // const factory ProductModel({
  // required String image,
  // required String title,
  // required String rating,
  // required String ratingCount,
  // required String price,
  // }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
  Map<String, Object?> toJson() => _$ProductModelToJson(this);

}
