import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:gamebox_plugin/widget/refresh/header_custom_widget.dart';

import '../../utils/screen_utils.dart';

class RefreshEasyWidget extends StatefulWidget {
  Widget containerWidget;
  dynamic onRefresh;

  RefreshEasyWidget(
      {Key? key, required this.containerWidget, required this.onRefresh})
      : super(key: key);

  @override
  State<RefreshEasyWidget> createState() => _RefreshEasyWidgetState();
}

class _RefreshEasyWidgetState extends State<RefreshEasyWidget> {
  @override
  Widget build(BuildContext context) {
    HYSizeFit.initialize(context);
    return EasyRefresh.builder(
      header: HeaderCustomWidget(),
      builder: (context, physics, header, footer) {
        return CustomScrollView(
          physics: physics,
          slivers: <Widget>[
            header!,
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: HYSizeFit.sethRpx(556),
                  child: ScrollNotificationInterceptor(
                    child: widget.containerWidget,
                  ),
                ),
              ]),
            ),
            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //       (context, index) {
            //     return SampleListItem();
            //   }, childCount: _count),
            // ),
            // footer!,
          ],
        );
      },
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 2), () {
          widget.onRefresh(0);
        });
      },
      onLoad: () async {
        await Future.delayed(const Duration(seconds: 2), () {});
      },
    );
  }
}
