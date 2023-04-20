import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

import '../../res/light_dark_color.dart';

class FooterCustomWidget extends Footer {
  bool noMores;
  double loadIndicatorExtents;
  double widthLine;

  @override
  Widget contentBuilder(
      BuildContext context,
      LoadMode loadState,
      double pulledExtent,
      double loadTriggerPullDistance,
      double loadIndicatorExtent,
      AxisDirection axisDirection,
      bool float,
      Duration? completeDuration,
      bool enableInfiniteLoad,
      bool success,
      bool noMore) {
    return ClassicalFooterWidget(
      classicalFooter: ClassicalFooter(
        textColor: launchPageBottomBtnTxBg(),
        infoColor: launchPageTopBtnBg(),
        infoText: '更新时间 %T',
        loadedText: '加载完成',
        loadFailedText: '加载失败',
        loadingText: '加载中',
        loadReadyText: '释放加载',
        loadText: '上拉加载',
        noMoreText: '到底了',
        enableInfiniteLoad: false,
        // refreshedText: "刷新完成",
        // refreshFailedText: "刷新失败",
        // refreshingText: "刷新中",
        // refreshReadyText: "释放刷新",
        // refreshText: "下拉刷新"
      ),
      loadState: loadState,
      pulledExtent: pulledExtent,
      loadTriggerPullDistance: loadTriggerPullDistance,
      loadIndicatorExtent: loadIndicatorExtents,
      axisDirection: axisDirection,
      float: float,
      completeDuration: completeDuration,
      enableInfiniteLoad: enableInfiniteLoad,
      success: success,
      noMore: noMores,
      lineWidth: widthLine,
    );
  }

  FooterCustomWidget(
      {this.noMores = false,
      this.loadIndicatorExtents = 30,
      this.widthLine = 100});
}
