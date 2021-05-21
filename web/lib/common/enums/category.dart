enum Category {
  FOOD,
  UTILITY,
  BEVERAGE,
  COSMETICS,
}

extension CategoryExtension on Category {
  String getString() {
    if (this == Category.FOOD) return 'Food';
    if (this == Category.UTILITY) return 'Utility';
    if (this == Category.BEVERAGE) return 'Beverage';
    if (this == Category.COSMETICS) return 'Cosmetics';
    throw Exception('Could not map Category to string');
  }

  List<String> get categoryList =>
      Category.values.map((e) => e.getString()).toList();
}
