import 'package:money2/money2.dart';

part 'search_item.g.dart';

class SearchItem{
  String title;
  Money price;
  int quantity;
  String image;

  SearchItem({
    required this.title = '',
    required this.price = ,
    required this.quantity,
    required this.image,
  });

  factory SearchItem.fromJson(Map<String, dynamic> json) => _$SearchItemFromJson(json);
}