import 'dart:convert';

import '../../domain/entities/logged_category.dart';
import '../../domain/entities/logged_category_info.dart';

class CategoryModel extends LoggedCategory implements LoggedCategoryInfo {
  const CategoryModel({
    required String id,
    required String name,
    required String image,
  }) : super(id: id, name: name, image: image);

  @override
  CategoryModel copyWith({
    String? id,
    String? name,
    String? image,
  }) {
    return CategoryModel(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] as String,
      name: map['name'] as String,
      image: map['image'] as String,
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) => CategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
