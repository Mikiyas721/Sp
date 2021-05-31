import 'package:dartz/dartz.dart';
import '../../../../common/failure.dart';

abstract class ImageUrlFailure extends Failure {}

class EmptyImageUrlFailure extends ImageUrlFailure {
  @override
  String get message => 'Image is required';
}

class ImageUrl {
  final String imageUrl;

  ImageUrl._(this.imageUrl);

  static Either<ImageUrlFailure, ImageUrl> create(String imageUrl) {
    if (imageUrl == null || imageUrl.isEmpty)
      return left(EmptyImageUrlFailure());
    return right(ImageUrl._(imageUrl));
  }
}
