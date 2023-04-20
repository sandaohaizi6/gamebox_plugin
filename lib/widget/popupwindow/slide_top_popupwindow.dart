import 'package:flutter/cupertino.dart';

///TODO:顶部弹出框
class SlideTopWidget extends StatefulWidget {
  final bool show;
  final Widget child;
  double topDistance = 0.18;

  SlideTopWidget({
    required this.show,
    required this.child,
    this.topDistance = 0.18,
  });

  @override
  _SlideTopWidgetState createState() => _SlideTopWidgetState();
}

class _SlideTopWidgetState extends State<SlideTopWidget>
    with TickerProviderStateMixin {
  AnimationController? controller;
  Tween<Offset>? tween;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    tween = Tween<Offset>(
      begin: const Offset(0.0, -1.0),
      end: Offset(0.0, widget.topDistance),
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
