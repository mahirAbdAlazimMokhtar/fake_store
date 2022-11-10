import 'package:flutter/cupertino.dart';
import 'package:store_rest_api/model/Category.dart';

class ProductsModel with ChangeNotifier{
  int? id;
  String? title;
  dynamic price;
  String? description;
  CategoriesModel? categoriesModel;
  List<String>? images;

  ProductsModel(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.categoriesModel,
      this.images});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    categoriesModel = json['category'] != null
        ? CategoriesModel.fromJson(json['category'])
        : null;
    images = json['images']!.cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['price'] = price;
    data['description'] = description;
    if (categoriesModel != null) {
      data['category'] = categoriesModel!.toJson();
    }
    data['images'] = images;
    return data;
  }

  static List<ProductsModel> productsFromSnapshot(List productsSnapshot) {
    return productsSnapshot.map((data) {
      return ProductsModel.fromJson(data);
    }).toList();
  }
}