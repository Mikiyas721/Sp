import 'package:flutter/material.dart';

class MultiScroller extends StatelessWidget {
  final verticalScrollController = ScrollController();
  final horizontalScrollController = ScrollController();
  final Widget child;

  MultiScroller({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        controller: verticalScrollController,
        child: SingleChildScrollView(
            controller: verticalScrollController,
            child: Scrollbar(
                controller: horizontalScrollController,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: horizontalScrollController,
                  child: child,
                ))));
  }
}
