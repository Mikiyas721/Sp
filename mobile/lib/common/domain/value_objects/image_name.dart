import 'package:dartz/dartz.dart';
import 'package:sp_client/common/failure.dart';

abstract class ImageNameFailure extends Failure {}

class EmptyImageNameFailure extends ImageNameFailure {
  @override
  String get message => 'Image is required';
}

class ImageName {
  final String imageName;

  ImageName._(this.imageName);

  static Either<ImageNameFailure, ImageName> create(String imageName) {
    if (imageName == null || imageName.isEmpty)
      return left(EmptyImageNameFailure());
    return right(ImageName._(imageName));
  }
}
