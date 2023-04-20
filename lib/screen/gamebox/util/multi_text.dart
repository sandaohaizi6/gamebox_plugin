import 'package:flutter/cupertino.dart';

import '../../../utils/screen_utils.dart';

class MultiTextWidget extends StatefulWidget {
  double? width;
  String? title;
  TextStyle? textStyle;
  int? maxLines;

  MultiTextWidget(
      {Key? key,
      required this.width,
      required this.title,
      required this.textStyle,
      required this.maxLines})
      : super(key: key);

  @override
  State<MultiTextWidget> createState() => _MultiTextWidgetState();
}

class _MultiTextWidgetState extends State<MultiTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: HYSizeFit.setRpx(widget.width ?? 134),
      child: Text(
        widget.title ?? '- -',
        style: widget.textStyle ??
            TextStyle(
              fontFamily: 'Source Han Sans CN',
              fontSize: HYSizeFit.setRpx(14),
              color: const Color(0xff2b2b2b),
              letterSpacing: -0.168,
              fontWeight: FontWeight.w500,
            ),
        softWrap: false,
        maxLines: widget.maxLines ?? 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
      ),
    );
  }
}
