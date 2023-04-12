// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatalogModel {
  static List<Item> items = [];

  //get item by ID
  Item getById(String language) =>
      items.firstWhere((element) => element.language == language, orElse: null);

  //get item by position
  Item getByPosition(int pos) => items[pos];
}

class Item {
  final String language;
  final String name;
  final String desc;
  final String currency;
  final num price;
  final String image;

  Item(
      {required this.language,
      required this.name,
      required this.desc,
      required this.currency,
      required this.price,
      required this.image});

  Item copyWith({
    String? language,
    String? name,
    String? desc,
    String? currency,
    num? price,
    String? image,
  }) {
    return Item(
      language: language ?? this.language,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      currency: currency ?? this.currency,
      price: price ?? this.price,
      image: image ?? this.image,
    );
  }

  Map<dynamic, dynamic> toMap() {
    return <dynamic, dynamic>{
      'language': language,
      'name': name,
      'desc': desc,
      'currency': currency,
      'price': price,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      language: map['language'] as String,
      name: map['name'] as String,
      desc: map['desc'] as String,
      currency: map['currency'] as String,
      price: map['price'] as num,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(language: $language, name: $name, desc: $desc, currency: $currency, price: $price, image: $image)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.language == language &&
        other.name == name &&
        other.desc == desc &&
        other.currency == currency &&
        other.price == price &&
        other.image == image;
  }

  @override
  int get hashCode {
    return language.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        currency.hashCode ^
        price.hashCode ^
        image.hashCode;
  }
}
