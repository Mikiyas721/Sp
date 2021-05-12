import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';

class LatestViewItemModel extends Equatable {
  final String id;
  final String itemName;
  final int quantity;
  final String imageUrl;
  final DateTime date;

  LatestViewItemModel(
      {@required this.id,
      @required this.itemName,
      @required this.quantity,
      @required this.imageUrl,
      @required this.date});

  // No two dates are ever equal, because they differ in timestamp
  // If the dates can't be equal then the object isn't gonna be equal
  @override
  List<Object> get props => [id, itemName, quantity, imageUrl, date.day];
}
