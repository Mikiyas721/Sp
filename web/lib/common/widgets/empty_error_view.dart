import 'package:flutter/material.dart';
import 'my_image_view.dart';
import '../../common/extensions.dart';

class EmptyErrorView extends StatelessWidget {
  final dynamic image;
  final String title;
  final String description;
  final String actionLabel;
  final VoidCallback onAction;

  const EmptyErrorView({
    Key key,
    this.image,
    this.title,
    this.description,
    this.actionLabel,
    this.onAction,
  }) : super(key: key);

  factory EmptyErrorView.defaultEmpty({
    dynamic image,
    String title,
    String description,
    String actionLabel,
    VoidCallback onAction,
  }) {
    return EmptyErrorView(
      image: image ?? 'images/empty.png',
      title: title ?? 'No Data',
      description: description ?? 'You have no data in this section',
      actionLabel: actionLabel ?? 'Reload',
      onAction: onAction,
    );
  }

  factory EmptyErrorView.defaultError({
    dynamic image,
    String title,
    String description,
    String actionLabel,
    VoidCallback onAction,
  }) {
    return EmptyErrorView(
      image: image ??'images/error.png',
      title: title ?? 'Error',
      description: description ?? 'An error occurred while loading',
      actionLabel: actionLabel ?? 'Retry',
      onAction: onAction,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (image != null)
          MyImageView(
            image: image,
            fit: BoxFit.contain,
            height: 200,
          ),
        24.0.vSpace,
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        if(description!=null)
        12.0.vSpace,
        if(description!=null)
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey.shade600,
          ),
        ),
        24.0.vSpace,
        if (actionLabel != null && onAction != null)
          OutlinedButton(
            onPressed: onAction,
            child: Text(
              actionLabel,
            ),
          ),
      ],
    );
  }
}
