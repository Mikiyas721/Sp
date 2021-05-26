import 'package:equatable/equatable.dart';

class ItemViewModel extends Equatable {
  final String title;
  final double price;
  final String imageUrl;

  ItemViewModel({this.title, this.price, this.imageUrl});

  List<Object> get props => [
    title,
    price,
    imageUrl
  ];
}






























