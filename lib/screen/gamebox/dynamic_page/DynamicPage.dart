import 'package:flutter/material.dart';
import 'package:gamebox_plugin/screen/gamebox/item/SearchPageItemSearchResult.dart';

import '../../../utils/screen_utils.dart';
import '../ui_list/ListViewWidget.dart';

class DynamicPage extends StatefulWidget {
  const DynamicPage({Key? key}) : super(key: key);

  @override
  State<DynamicPage> createState() => _DynamicPageState();
}

class _DynamicPageState extends State<DynamicPage>
    with TickerProviderStateMixin {
  late final TabController primaryTC;
  final ScrollController sc = ScrollController();
  final List<String> infoData = [
    '生  日：',
    '爱  好：',
    '城  市：',
    '身  高：',
    '星  座：',
    '体  重：',
    '签  名：',
  ];

  @override
  void initState() {
    super.initState();
    primaryTC = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    primaryTC.dispose();
    sc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF8F8F8),
      padding: EdgeInsets.only(
          left: HYSizeFit.setRpx(18),
          right: HYSizeFit.setRpx(18),
          top: HYSizeFit.setRpx(38)),
      width: HYSizeFit.screenWidth,
      //TODO:设置高度
      height: HYSizeFit.screenHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TabBar(
            labelStyle: TextStyle(
              fontFamily: 'Source Han Sans CN',
              fontSize: HYSizeFit.setRpx(18),
              color: const Color(0xffB2B2B2),
              letterSpacing: -0.384,
              fontWeight: FontWeight.w700,
            ),
            controller: primaryTC,
            // indicatorColor: Colors.blue,
            indicatorColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 0.1,
            isScrollable: true,
            unselectedLabelStyle: TextStyle(
              fontFamily: 'Source Han Sans CN',
              fontSize: HYSizeFit.setRpx(16),
              color: const Color(0xffB2B2B2),
              letterSpacing: -0.384,
              fontWeight: FontWeight.w500,
            ),
            labelColor: const Color(0xff444242),
            unselectedLabelColor: const Color(0xffB2B2B2),
            labelPadding: EdgeInsets.only(
                left: 0, right: HYSizeFit.setRpx(16), bottom: 0, top: 0),
            indicatorPadding: EdgeInsets.only(
                left: 0, right: HYSizeFit.setRpx(16), bottom: 0, top: 0),
            tabs: const <Tab>[
              Tab(text: '关注'),
              Tab(text: '现场点歌'),
              Tab(text: '多人派对'),
              Tab(text: '情感交友'),
              Tab(text: '游戏开黑'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: primaryTC,
              children: <Widget>[
                //TODO:动态

                ListViewWidget(
                  bottom: 20,
                  isUiHead: false,
                  uiHeadWidget: Container(),
                  itemUi: (index) {
                    return SearchPageItemSearchResult(
                      left: 0,
                      right: 0,
                    );
                  },
                  scrollDirection: Axis.vertical,
                ),
                ListViewWidget(
                  bottom: 20,
                  isUiHead: false,
                  uiHeadWidget: Container(),
                  itemUi: (index) {
                    return SearchPageItemSearchResult(
                      left: 0,
                      right: 0,
                    );
                  },
                  scrollDirection: Axis.vertical,
                ),
                ListViewWidget(
                  bottom: 20,
                  isUiHead: false,
                  uiHeadWidget: Container(),
                  itemUi: (index) {
                    return SearchPageItemSearchResult(
                      left: 0,
                      right: 0,
                    );
                  },
                  scrollDirection: Axis.vertical,
                ),
                ListViewWidget(
                  bottom: 20,
                  isUiHead: false,
                  uiHeadWidget: Container(),
                  itemUi: (index) {
                    return SearchPageItemSearchResult(
                      left: 0,
                      right: 0,
                    );
                  },
                  scrollDirection: Axis.vertical,
                ),
                ListViewWidget(
                  bottom: 20,
                  isUiHead: false,
                  uiHeadWidget: Container(),
                  itemUi: (index) {
                    return SearchPageItemSearchResult(
                      left: 0,
                      right: 0,
                    );
                  },
                  scrollDirection: Axis.vertical,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
