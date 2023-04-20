import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:gamebox_plugin/res/light_dark_color.dart';
import 'package:gamebox_plugin/utils/screen_utils.dart';

//封装图片加载控件，增加图片加载失败时加载默认图片https://oversea.armvm.com/screenshot/3a651ca7018343abba0945bf5c583f0a.png
class ImageNetworkWidget extends StatefulWidget {
  const ImageNetworkWidget(Key key,
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

class _StateImageWidget extends State<ImageNetworkWidget> {
  // late Image _image;
  // late CachedNetworkImage _imageOctoImage;

  Image image() => Image.asset(
        widget.defImagePath,
        width: HYSizeFit.screenWidth,
        fit: BoxFit.fill,
        height: HYSizeFit.screenHeight,
      );

  Widget imageOctoImage() => CachedNetworkImage(
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
                colorFilter: const ColorFilter.mode(
                    Colors.transparent, BlendMode.colorBurn)),
          ),
        ),
        progressIndicatorBuilder: (context, url, progress) {
          double value = 0;
          if (progress.totalSize != null) {
            value = progress.downloaded / progress.totalSize!;
          }
          // print("状态保存中【${progress.progress}】");
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: HYSizeFit.setRpx(60),
                  height: HYSizeFit.setRpx(60),
                  child: const LoadingIndicator(
                      indicatorType: Indicator.lineSpinFadeLoader,

                      /// Required, The loading type of the widget
                      // colors: [
                      //   string2Color("F2F3F3"),
                      //   string2Color("#A0A5A8"),
                      //   string2Color("#798084"),
                      //   string2Color("#404D54"),
                      //   string2Color("#2A3840"),
                      // ],

                      /// Optional, The color collections
                      strokeWidth: 0.5,

                      /// Optional, The stroke of the line, only applicable to widget which contains line
                      backgroundColor: Colors.transparent,

                      /// Optional, Background of the widget
                      pathBackgroundColor: Colors.transparent

                      /// Optional, the stroke backgroundColor
                      )
                  // CircularProgressIndicator(
                  //   strokeWidth: 2.0,
                  //   valueColor: AlwaysStoppedAnimation(
                  //     widget.classicalHeader.textColor,
                  //   ),
                  // ),
                  ),
              Visibility(
                child: Text(
                  "状态保存进度${(((progress.progress ?? 0) * 100).toStringAsFixed(0))}%",
                  style: TextStyle(
                      color: cloudPhonePageAddTxBg(),
                      fontSize: HYSizeFit.setRpx(15)),
                ),
                visible: progress.progress != null,
              )
            ],
          )

              //     CircularProgressIndicator(
              //   value: value,
              //   color: launchPageTopBtnBg(),
              // )

              );
        },
        width: HYSizeFit.screenWidth,
        height: HYSizeFit.screenHeight,
        imageUrl: widget.url,
        errorWidget: (context, url, error) => image(),
      );

  @override
  void initState() {
    super.initState();

    //     OctoImage(
    //   width: HYSizeFit.screenWidth,
    //   fit: BoxFit.cover,
    //   height: HYSizeFit.screenHeight,
    //   image: NetworkImage(widget.url),
    //   progressIndicatorBuilder: (context, progress) {
    //     double value = 0;
    //     if (progress != null && progress.expectedTotalBytes != null) {
    //       value = progress.cumulativeBytesLoaded / progress.expectedTotalBytes!;
    //     }
    //     return Center(
    //         child: CircularProgressIndicator(
    //       value: value,
    //       color: launchPageTopBtnBg(),
    //     ));
    //   },
    //   // placeholderBuilder: OctoPlaceholder.blurHash(
    //   //   'LEHV6nWB2yk8pyo0adR*.7kCMdnj',
    //   // ),
    //   // errorBuilder: OctoError.icon(color: Colors.grey),
    //   errorBuilder: (context, error, stacktrace) => Image.asset(
    //     widget.defImagePath,
    //     width: HYSizeFit.screenWidth,
    //     fit: BoxFit.cover,
    //     height: HYSizeFit.screenHeight,
    //   ),
    // );

    // Image.network(widget.url,
    //     width: HYSizeFit.screenWidth,
    //     fit: BoxFit.cover,
    //     height: HYSizeFit.screenHeight)

    ;
    var resolve = image().image.resolve(ImageConfiguration.empty);
    resolve.addListener(ImageStreamListener((_, __) {
      //加载成功
    }, onError: (Object exception, StackTrace? stackTrace) {
      //加载失败
      setState(() {
        image() => Image.asset(
              widget.defImagePath,
              width: widget.w,
              fit: BoxFit.fitWidth,
              height: widget.h,
            );
      });
    }));
  }

  @override
  Widget build(BuildContext context) {
    HYSizeFit.initialize(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(17),
      child: widget.url == '' ? image() : imageOctoImage(),
    );
    // return _image;
  }
}
