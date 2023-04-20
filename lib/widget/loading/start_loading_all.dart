import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:gamebox_plugin/utils/screen_utils.dart';

import '../../main.dart';
import '../../res/colors.dart';

///TODO：启动进度加载弹窗
startLoadingAll(bool isShow,
    {int duration = 3000,
    String text = "加载中...",
    double width = 88,
    dynamic callback}) {
  HYSizeFit.initialize(navigatorKey.currentState!.overlay!.context);
  if (!EasyLoading.isShow && isShow) {
    EasyLoading.instance.backgroundColor = Colors.transparent;
    EasyLoading.show(
        maskType: EasyLoadingMaskType.black,
        indicator: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
          child: Container(
            alignment: Alignment.center,
            child: Wrap(
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                          Radius.circular(HYSizeFit.setRpx(15))),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    width: HYSizeFit.setRpx(width),
                    child: Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: HYSizeFit.setRpx(10),
                            ),
                            SizedBox(
                              width: HYSizeFit.setRpx(70),
                              height: HYSizeFit.setRpx(70),
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
                                  ),
                            ),
                            // SizedBox(
                            //   height: HYSizeFit.setRpx(5),
                            // ),
                            Text(text,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Heavy",
                                    color: string2Color("#ffffff"),
                                    fontSize: HYSizeFit.setRpx(12))),
                            SizedBox(
                              height: HYSizeFit.setRpx(10),
                            )
                          ]),
                    ))
              ],
            ),
          ),
        ));
    try {
      Future.delayed(Duration(milliseconds: duration), () {
        if (EasyLoading.isShow) EasyLoading.dismiss(animation: true);
        Future.delayed(const Duration(milliseconds: 800), () {
          try {
            callback();
          } catch (e) {}
        });
      });
    } catch (e) {}
  }

  if (!isShow) {
    if (EasyLoading.isShow) EasyLoading.dismiss(animation: true);
    try {
      callback();
    } catch (e) {}
  }
}
