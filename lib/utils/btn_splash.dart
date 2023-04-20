import 'package:flutter/material.dart';
import 'package:gamebox_plugin/utils/screen_utils.dart';

class BtnSplash extends StatelessWidget {
  Color color;
  Color splashColor;
  dynamic callback;
  String title;
  Color titleColor;
  double padding = 33;
  double fontSize = 15;
  double height = 44;
  double top = 27;

  BtnSplash(
      {Key? key,
      required this.color,
      required this.splashColor,
      required this.callback,
      required this.title,
      this.fontSize = 15,
      this.padding = 33,
      this.height = 44,
      this.top = 27,
      required this.titleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    HYSizeFit.initialize(context);
    return Container(
      margin: EdgeInsets.only(
          top: HYSizeFit.setRpx(top),
          left: HYSizeFit.setRpx(padding),
          right: HYSizeFit.setRpx(padding)),
      child: Ink(
        decoration: BoxDecoration(
          // color: context.watch<LaunchNotifier>().phoneNumber != 0 &&
          //         context.watch<LaunchNotifier>().passwd != ""
          //     ? launchPageTopBtnBg()
          //     : discoverReplaceDeviceTxSelBg(),
          //
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(HYSizeFit.setRpx(30))),
        ),
        child: InkResponse(
          borderRadius: BorderRadius.all(Radius.circular(HYSizeFit.setRpx(30))),
          highlightShape: BoxShape.rectangle,
          radius: HYSizeFit.setRpx(300),
          // splashColor: launchPageTopBtnBg(),
          splashColor: splashColor,
          containedInkWell: true,
          onTap: () {
            callback();
            // if (!checkPhone("$phoneNumber")) {
            //   Fluttertoast.showToast(msg: "请输入正确的手机号");
            //   return;
            // }
          },
          child: Container(
            alignment: AlignmentDirectional.center,
            height: HYSizeFit.setRpx(height),
            child: Text(
              // S.of(context).login,
              title,
              style: TextStyle(
                  fontFamily: 'Medium',
                  fontSize: HYSizeFit.setRpx(fontSize),
                  color: titleColor
                  // color: launchPageTopBtnTxBg()
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
