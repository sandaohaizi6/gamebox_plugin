import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

import '../../res/light_dark_color.dart';

class HeaderCustomWidget extends Header {
  @override
  Widget contentBuilder(
      BuildContext context,
      RefreshMode refreshState,
      double pulledExtent,
      double refreshTriggerPullDistance,
      double refreshIndicatorExtent,
      AxisDirection axisDirection,
      bool float,
      Duration? completeDuration,
      bool enableInfiniteRefresh,
      bool success,
      bool noMore) {
    // TODO: implement contentBuilder
    return ClassicalHeaderWidget(
      classicalHeader: ClassicalHeader(
          textColor: launchPageBottomBtnTxBg(),
          infoColor: launchPageTopBtnBg(),
          infoText: '更新时间 %T',
          refreshedText: "刷新完成",
          refreshFailedText: "刷新失败",
          refreshingText: "刷新中",
          refreshReadyText: "释放刷新",
          refreshText: "下拉刷新"),
      refreshState: refreshState,
      pulledExtent: pulledExtent,
      refreshTriggerPullDistance: refreshTriggerPullDistance,
      refreshIndicatorExtent: refreshIndicatorExtent,
      axisDirection: axisDirection,
      float: float,
      completeDuration: completeDuration,
      enableInfiniteRefresh: enableInfiniteRefresh,
      success: success,
      noMore: noMore,
    );
  }
}
