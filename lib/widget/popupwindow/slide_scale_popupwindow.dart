import 'package:flutter/cupertino.dart';

///TODO:缩放弹出框
class SlideScaleWidget extends StatefulWidget {
  final bool show;
  final Widget child;

  const SlideScaleWidget({
    required this.show,
    required this.child,
  });

  @override
  _SlideScaleWidgetState createState() => _SlideScaleWidgetState();
}

class _SlideScaleWidgetState extends State<SlideScaleWidget>
    with TickerProviderStateMixin {
  AnimationController? controller;
  Tween<double>? tween;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    tween = Tween<double>(
      begin: 0.8,
      end: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.show) {
      controller!.forward();
    } else {
      controller!.reverse();
    }

    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    return ScaleTransition(
      scale: tween!.animate(controller!),
      child: widget.child,
    );
  }
}
