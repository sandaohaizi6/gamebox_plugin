import 'package:flutter/material.dart';

import '../../../utils/image/ImageAssets.dart';
import '../../../utils/screen_utils.dart';
import '../widget/InkWellCustom.dart';

class MainFuncButton extends StatefulWidget {
  double left;
  double right;
  double width;
  double height;
  String setImage;
  String title;
  double titleSize;
  double subTitleSize;
  String subTitle;
  int leftColor;
  int rightColor;
  double imageWidth;
  double imageHeight;
  double imagePaddingRight;
  double imagePaddingBottom;
  VoidCallback? onTap;

  MainFuncButton({
    Key? key,
    this.left = 0,
    this.right = 0,
    this.width = 0,
    this.imageWidth = 0,
    this.height = 0,
    this.imageHeight = 0,
    this.setImage = "",
    this.title = "",
    this.subTitle = "",
    this.leftColor = 0xfffff5c3,
    this.rightColor = 0xffff6ca1,
    this.titleSize = 0,
    this.subTitleSize = 0,
    this.imagePaddingRight = 0,
    this.imagePaddingBottom = 0,
    this.onTap,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MainFuncButtonState();
  }
}

class _MainFuncButtonState extends State<MainFuncButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWellCustom(
      onTap: widget.onTap ?? () {},
      child: Container(
        margin: EdgeInsets.only(
            left: HYSizeFit.setRpx(widget.left),
            right: HYSizeFit.setRpx(widget.right)),
        width: HYSizeFit.setRpx(widget.width),
        height: HYSizeFit.setRpx(widget.height),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: const Alignment(1.229, 1.443),
            end: const Alignment(-0.646, -1.127),
            colors: [Color(widget.leftColor), Color(widget.rightColor)],
            stops: [0.0, 1.0],
          ),
          borderRadius: BorderRadius.circular(20.0),
          // boxShadow: const [
          //   BoxShadow(
          //     color: Color(0x29000000),
          //     offset: Offset(0, 3),
          //     blurRadius: 6,
          //   ),
          // ],
        ),
        child: Stack(
          children: [
            Positioned(
                right: widget.imagePaddingRight,
                bottom: widget.imagePaddingBottom,
                child: setImage(widget.setImage,
                    width: widget.imageWidth, height: widget.imageHeight)),
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Adobe XD layer: 'Status Bar' (group)
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontFamily: 'Source Han Sans CN',
                        fontSize: HYSizeFit.setRpx(widget.titleSize),
                        color: const Color(0xffffffff),
                        letterSpacing: -0.24,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                    Text(
                      widget.subTitle,
                      style: TextStyle(
                        fontFamily: 'Source Han Sans CN',
                        fontSize: HYSizeFit.setRpx(widget.subTitleSize),
                        color: const Color(0xb2ffffff),
                        letterSpacing: -0.12,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    )
                  ]),
              margin: EdgeInsets.only(
                  left: HYSizeFit.setRpx(16), top: HYSizeFit.setRpx(16)),
            ),
          ],
        ),
      ),
    );
  }
}
