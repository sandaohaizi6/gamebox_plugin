import 'package:flutter/cupertino.dart';

import '../../../../utils/screen_utils.dart';
import '../../../../widget/refresh/footer_custom_widget.dart';
import '../../item/SearchPageItemHotRoom.dart';
import '../../ui_list/ListViewWidget.dart';

//section Hot Room Widget
/*
*   _   _       _      ____                         __        ___     _            _
*  | | | | ___ | |_   |  _ \ ___   ___  _ __ ___    \ \      / (_) __| | __ _  ___| |_
*  | |_| |/ _ \| __|  | |_) / _ \ / _ \| '_ ` _ \    \ \ /\ / /| |/ _` |/ _` |/ _ \ __|
*  |  _  | (_) | |_   |  _ < (_) | (_) | | | | | |    \ V  V / | | (_| | (_| |  __/ |_
*  |_| |_|\___/ \__|  |_| \_\___/ \___/|_| |_| |_|     \_/\_/  |_|\__,_|\__, |\___|\__|
*                                                                       |___/
*/
class HotRoomWidget extends StatefulWidget {
  String? title;
  List<Color> colors = [
    const Color(0xffd1fdff),
    const Color(0x96ecfbff),
    const Color(0xffffffff)
  ];

  HotRoomWidget({Key? key, required this.title, required this.colors})
      : super(key: key);

  @override
  State<HotRoomWidget> createState() => _HotRoomWidgetState();
}

class _HotRoomWidgetState extends State<HotRoomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: HYSizeFit.setRpx(300),
        margin: EdgeInsets.only(
            left: HYSizeFit.setRpx(11), top: HYSizeFit.setRpx(142)),
        padding: EdgeInsets.only(
            left: HYSizeFit.setRpx(20),
            top: HYSizeFit.setRpx(10),
            right: HYSizeFit.setRpx(11)),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.0, -1.0),
            end: Alignment(0.0, 1.0),
            // colors: [Color(0xffd1fdff), Color(0x96ecfbff), Color(0xffffffff)],
            colors: [...widget.colors],
            stops: [0.0, 0.416, 1.0],
          ),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0d000000),
              offset: Offset(0, 3),
              blurRadius: 6,
            ),
          ],
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            // '声音交友',
            widget.title ?? "- -",
            style: TextStyle(
              fontFamily: 'Source Han Sans CN',
              fontSize: 13,
              color: Color(0xff2b2b2b),
              letterSpacing: -0.156,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
            softWrap: false,
          ),
          Expanded(
            child: //TODO:动态
                ListViewWidget(
              bottom: 20,
              isUiHead: false,
              foot: FooterCustomWidget(
                  widthLine: 70,
                  loadIndicatorExtents: HYSizeFit.setRpx(20),
                  // noMores: currentPage == pages ? true : false),
                  noMores: true),
              uiHeadWidget: Container(),
              itemUi: (index) {
                return SearchPageItemHotRoom(
                  index: index,
                );
              },
              scrollDirection: Axis.vertical,
            ),
            flex: 1,
          )
        ]));
  }
}
