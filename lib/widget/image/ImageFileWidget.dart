import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gamebox_plugin/utils/screen_utils.dart';

import '../../utils/image/FileImageEx.dart';

//封装图片加载控件，增加图片加载失败时加载默认图片
class ImageFileWidget extends StatefulWidget {
  ImageFileWidget(Key key,
      {required this.url,
      required this.w,
      required this.h,
      this.defImagePath = "assets/calendar/vmosPausePlaceholder.png"});

  final String url;
  final double w;
  final double h;
  final String defImagePath;

  @override
  State<StatefulWidget> createState() {
    return _StateImageWidget();
  }
}

class _StateImageWidget extends State<ImageFileWidget> {
  Image image() => Image.asset(
        widget.defImagePath,
        width: HYSizeFit.screenWidth,
        fit: BoxFit.fill,
        height: HYSizeFit.screenHeight,
      );
  Image imageFile() => Image(
      width: HYSizeFit.setRpx(widget.w),
      height: HYSizeFit.setRpx(widget.h),
      fit: BoxFit.fitWidth,
      image: FileImageEx(File(widget.url)));
  @override
  void initState() {
    super.initState();
    widget.url == '' ? image() : imageFile();
    var resolve = image().image.resolve(ImageConfiguration.empty);
    resolve.addListener(ImageStreamListener((_, __) {
      //加载成功
    }, onError: (Object exception, StackTrace? stackTrace) {
      //加载失败
      image();
      setState(() {
        // _image = Image.asset(
        //   widget.defImagePath,
        //   width: widget.w,
        //   fit: BoxFit.fitWidth,
        //   height: widget.h,
        // );
      });
    }));
  }

  @override
  Widget build(BuildContext context) {
    HYSizeFit.initialize(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(17),
      child: widget.url == '' ? image() : imageFile(),
    );
    // return _image;
  }
}
