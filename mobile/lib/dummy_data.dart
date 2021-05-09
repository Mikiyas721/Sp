import 'package:flutter/material.dart';
import './presentation/model/categories_view_item_model.dart';
import './presentation/model/latest_view_item_model.dart';

const Dummy_Categories = const [
  CategoryViewItemModel(
      id: "A1", title: "Beverage", icon: Icon(Icons.emoji_food_beverage)),
  CategoryViewItemModel(id: "A2", title: "Food", icon: Icon(Icons.fastfood)),
  CategoryViewItemModel(id: "A3", title: "Seafood", icon: Icon(Icons.set_meal)),
  CategoryViewItemModel(
      id: "A4", title: "Floral", icon: Icon(Icons.local_florist))
];

var dummyLatestItems = [
  LatestViewItemModel(
      id: "A5",
      itemName: "Food",
      quantity: 5,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bo'
          'lognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      date: DateTime.now()),
  LatestViewItemModel(
      id: "A6",
      itemName: "Fish",
      quantity: 150,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      date: DateTime.now()),
  LatestViewItemModel(
      id: "A7",
      itemName: "Milk",
      quantity: 65,
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
      date: DateTime.now())
];
