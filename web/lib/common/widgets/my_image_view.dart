import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';

class MyImageView extends StatelessWidget {
  final dynamic image;
  final BoxFit fit;
  final double height;
  final double width;

  const MyImageView({
    Key key,
    this.image,
    this.fit = BoxFit.cover,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: buildImage(),
    );
  }

  Widget buildImage() {
    return Image(
      image: imageProvider(image),
      height: height,
      width: width,
      fit: fit,
    );
  }

  static ImageProvider imageProvider(image) {
    if (image == null) return null;
    if (image is Uint8List) return MemoryImage(image);
    if (image is File) return FileImage(image);
    String imageUrl = image;
    if (imageUrl.startsWith("images")) return AssetImage(imageUrl);

    return NetworkImage(imageUrl);
  }
}
