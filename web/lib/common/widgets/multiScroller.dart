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
		isAlwaysShown:true,
        child: Scrollbar(
                controller: horizontalScrollController,
				isAlwaysShown:true,
                child: SingleChildScrollView(
            controller: verticalScrollController,
            child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: horizontalScrollController,
                  child: child,
                ))));
  }
}
