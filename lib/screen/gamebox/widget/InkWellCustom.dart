import 'package:flutter/material.dart';

class InkWellCustom extends InkWell {
  final BorderRadius borderRadius;

  InkWellCustom(
      {this.borderRadius = const BorderRadius.all(Radius.circular(0)),
      required Widget child,
      required VoidCallback onTap})
      : super(
          onTap: onTap,
          child: child,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        );

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: borderRadius,
      ),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: super.build(context),
      ),
    );
  }
}
