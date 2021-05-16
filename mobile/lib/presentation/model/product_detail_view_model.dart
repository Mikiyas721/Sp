import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';

class ProductDetailViewModel extends Equatable {
  final String title;
  final String imageUrl;
  final int quantity;
  final String location;
  final DateTime manDate;
  final DateTime expDate;
  final String description;

  ProductDetailViewModel(
      {@required this.title,
      @required this.imageUrl,
      @required this.quantity,
      @required this.location,
      @required this.manDate,
      @required this.expDate,
      @required this.description});

  List<Object> get props =>
      [title, imageUrl, quantity, location, manDate, expDate, description];
}
