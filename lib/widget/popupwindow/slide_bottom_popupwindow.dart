import 'package:flutter/cupertino.dart';

///TODO:底部弹出框
class SlideWidget extends StatefulWidget {
  final bool show;
  final Widget child;

  double startX = 0;
  double endX = 0;
  double startY = 0.2;
  double endY = 0;

  SlideWidget({
    required this.show,
    required this.child,
    this.startX = 0,
    this.endX = 0,
    this.startY = 0.2,
    this.endY = 0,
  });

  @override
  _SlideWidgetState createState() => _SlideWidgetState();
}

class _SlideWidgetState extends State<SlideWidget>
    with TickerProviderStateMixin {
  AnimationController? controller;
  Tween<Offset>? tween;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    tween = Tween<Offset>(
      begin: Offset(widget.startX, widget.startY),
      end: Offset(widget.endX, widget.endY),
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
    return SlideTransition(
      position: tween!.animate(controller!),
      child: widget.child,
    );
  }
}
