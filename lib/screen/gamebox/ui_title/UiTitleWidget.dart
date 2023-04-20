import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../utils/screen_utils.dart';
import '../../../widget/small_tips/SmallTipsWidget.dart';

class UiTitleWidget extends StatefulWidget {
  String title;

  UiTitleWidget({Key? key, this.title = ""}) : super(key: key);

  @override
  State<UiTitleWidget> createState() => _UiTitleWidgetState();
}

class _UiTitleWidgetState extends State<UiTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        getSmallTipsWidget(),
        Container(
          child: Text(
            widget.title,
            style: const TextStyle(
              fontFamily: 'Source Han Sans CN',
              fontSize: 18,
              color: Color(0xff2b2b2b),
              letterSpacing: -0.216,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
            softWrap: false,
          ),
          margin: EdgeInsets.only(
              left: HYSizeFit.setRpx(4),
              bottom: HYSizeFit.setRpx(GetPlatform.isAndroid ? 4 : 0)),
        )
      ],
    );
  }
}
