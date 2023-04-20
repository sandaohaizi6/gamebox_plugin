import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ndialog/ndialog.dart';
import 'package:gamebox_plugin/utils/screen_utils.dart';

import '../res/colors.dart';
import '../res/light_dark_color.dart';

class NetworkUtil {
  static NetworkUtil? _instance;

  NetworkUtil();

  factory NetworkUtil.getInstance() => _getInstance();

  static _getInstance() {
    _instance ??= NetworkUtil();
    return _instance;
  }

  NAlertDialog? _NAlertDialog;
  bool isShow = false;
  bool isShowUpdateContent = false;

  checkNetwork(BuildContext context) {
    internetState(context);
  }

  Future internetState(BuildContext context) async {
    bool isOpen = false;
    try {
      Response response = await Dio().get("http://www.google.com");
      // print(response);
      isOpen = true;
      return response.toString();
    } catch (e) {
      if (!isOpen) {
        isOpen = false;
        try {
          Response response = await Dio().get("http://www.baidu.com");
          // print(response);
          isOpen = true;
          return response.toString();
        } catch (e) {
          if (!isOpen) {
            isOpen = false;
            if (_NAlertDialog == null || (_NAlertDialog != null && !isShow)) {
              isShow = true;
              // _showNetworkStatusDialog(context, () {
              //   Navigator.of(context).pop();
              // });
            }
          }
        }
      }
    }
  }

  _showNetworkStatusDialog(BuildContext context, GestureTapCallback callback) {
    HYSizeFit.initialize(context);
    _NAlertDialog = NAlertDialog(
      onDismiss: () {
        Future.delayed(const Duration(seconds: 1), () {
          isShow = false;
        });
      },
      dismissable: true,
      dialogStyle: DialogStyle(
        backgroundColor: homePageGrayBg(),
        titleDivider: false,
        borderRadius: BorderRadius.all(Radius.circular(HYSizeFit.setRpx(40))),
      ),
      content: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.all(
              Radius.circular(HYSizeFit.sethRpx(40))),
          color: homePageGrayBg(),
        ),
        height: HYSizeFit.sethRpx(240),
        width: HYSizeFit.setRpx(311),
        child: Column(
          children: [
            SizedBox(
              height: HYSizeFit.sethRpx(48),
            ),
            Center(
              child: Text("Networking Error",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: testPageGuideTitleBg(),
                      fontSize: HYSizeFit.sethRpx(24))),
            ),
            SizedBox(
              height: HYSizeFit.sethRpx(26),
            ),
            Text("The request timed out.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    color: testPageGuidesubTitleBg(0),
                    fontSize: HYSizeFit.sethRpx(18))),
            SizedBox(
              height: HYSizeFit.sethRpx(29),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: testPageGuideDissBg(),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      textStyle: const TextStyle(color: Colors.transparent),
                      side: BorderSide(width: 2, color: testPageGuideDissBg()),
                    ),
                    child: Text("Dismiss",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: string2Color("#ffffff"),
                            fontSize: HYSizeFit.sethRpx(18))),
                    onPressed: () {
                      callback();
                      Future.delayed(const Duration(seconds: 1), () {
                        isShow = false;
                      });
                    },
                  ),
                  width: HYSizeFit.setRpx(271 * 2),
                  height: HYSizeFit.sethRpx(50),
                ),
                SizedBox(
                  height: HYSizeFit.sethRpx(16),
                ),
              ],
            )
          ],
        ),
      ),
    );
    _NAlertDialog!.show(context);
  }

  //TODO:成功更新题库弹窗
  showUpdatingContentDialog(BuildContext context, String title, String subTitle,
      Color? color, dynamic callback) {
    // HYSizeFit.initialize(context);
    _NAlertDialog = NAlertDialog(
      // onDismiss: () {
      //   Future.delayed(Duration(seconds: 1), () {
      //     isShow = false;
      //   });
      // },
      dismissable: false,
      dialogStyle: DialogStyle(
        backgroundColor: color,
        titleDivider: false,
        borderRadius: BorderRadius.all(Radius.circular(HYSizeFit.setRpx(20))),
      ),
      content: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.all(
              Radius.circular(HYSizeFit.sethRpx(20))),
          color: homePageGrayBg(),
        ),
        height: HYSizeFit.sethRpx(106),
        width: HYSizeFit.setRpx(220),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: HYSizeFit.sethRpx(20),
              ),
              Center(
                child: Text(title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Heavy",
                        fontWeight: FontWeight.w700,
                        color: string2Color(
                            isDayOrNight() ? "#262626" : "#FFFFFF"),
                        fontSize: HYSizeFit.sethRpx(18))),
              ),
              SizedBox(
                height: HYSizeFit.sethRpx(12),
              ),
              Text(subTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Heavy",
                      color: string2Color("#8C8C8C"),
                      fontSize: HYSizeFit.sethRpx(13))),
            ],
          ),
        ),
      ),
    );
    _NAlertDialog!.show(context);

    if (!isShowUpdateContent) {
      Future.delayed(const Duration(milliseconds: 1200), () {
        isShowUpdateContent = true;
        Navigator.of(context).pop();
        showUpdatingContentDialog(context, "Hang on a sec",
            "Syncing your account to \nthe device…", homePageGrayBg(), () {});
        callback();
      });
    }
  }

  ///TODO: 加载中 View
  Widget buildLoadingView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: HYSizeFit.setRpx(50),
            width: HYSizeFit.setRpx(50),
            child: CircularProgressIndicator(
              strokeWidth: 5,
              valueColor:
                  AlwaysStoppedAnimation<Color>(string2Color("#022241")),
            ),
          ),
          SizedBox(
            height: HYSizeFit.setRpx(10),
          ),
          Text("",
              style: TextStyle(
                  color: string2Color("#022241"),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Heavy",
                  fontSize: HYSizeFit.sethRpx(12))),
        ],
      ),
    );
  }
}
