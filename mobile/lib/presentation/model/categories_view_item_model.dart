import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class CategoryViewItemModel extends Equatable {
  final String id;
  final String title;
  final Icon icon;

  const CategoryViewItemModel(
      {@required this.id, @required this.title, @required this.icon});

  List<Object> get props => [id, title, icon];
}
