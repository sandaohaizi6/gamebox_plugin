import 'package:flutter/material.dart';
import 'package:gamebox_plugin/screen/gamebox/item/DetailPageItemDynamic.dart';

import '../../../../utils/screen_utils.dart';
import '../../ui_list/ListViewWidget.dart';
import '../ui_info/GlowNotificationContainer.dart';

class InfoDynamicGift extends StatefulWidget {
  const InfoDynamicGift({Key? key}) : super(key: key);

  @override
  State<InfoDynamicGift> createState() => _InfoDynamicGiftState();
}

class _InfoDynamicGiftState extends State<InfoDynamicGift>
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
    primaryTC = TabController(length: 3, vsync: this);
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
      width: HYSizeFit.screenWidth,
      //TODO:设置高度
      height: HYSizeFit.screenHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TabBar(
            labelStyle: TextStyle(
              fontFamily: 'Source Han Sans CN',
              fontSize: HYSizeFit.setRpx(16),
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
            labelColor: const Color(0xff444242),
            unselectedLabelColor: const Color(0xffB2B2B2),
            labelPadding: EdgeInsets.only(
                left: 0, right: HYSizeFit.setRpx(16), bottom: 0, top: 0),
            indicatorPadding: EdgeInsets.only(
                left: 0, right: HYSizeFit.setRpx(16), bottom: 0, top: 0),
            tabs: const <Tab>[
              Tab(text: '资料'),
              Tab(text: '动态'),
              Tab(text: '礼物'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: primaryTC,
              children: <Widget>[
                //TODO:资料
                GlowNotificationContainer(
                    child: (i) {
                      return Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: HYSizeFit.setRpx(10)),
                        // height: 60.0,
                        child:
                            // Text(const Key('Tab0').toString() +
                            //     ': ListView$i')
                            Row(
                          children: [
                            Text(
                              infoData[i],
                              style: TextStyle(
                                fontFamily: 'Source Han Sans CN',
                                fontSize: HYSizeFit.setRpx(12),
                                color: const Color(0xff959090),
                                letterSpacing: -0.28800000000000003,
                              ),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                            Container(
                              width: HYSizeFit.setRpx(290),
                              child: Text(
                                i == 0
                                    ? '1999年06月01日'
                                    : i == 1
                                        ? '唱歌跳舞   网球'
                                        : i == 2
                                            ? '湖南长沙'
                                            : i == 3
                                                ? '164CM'
                                                : i == 4
                                                    ? '狮子座'
                                                    : i == 5
                                                        ? '40KG'
                                                        : i == 6
                                                            ? '门没锁补发哈部分科技阿哈里斯'
                                                            : '',
                                style: TextStyle(
                                  fontFamily: 'Source Han Sans CN',
                                  fontSize: HYSizeFit.setRpx(12),
                                  color: const Color(0xff474546),
                                  letterSpacing: -0.28800000000000003,
                                  fontWeight: FontWeight.w500,
                                ),
                                softWrap: false,
                                maxLines: 10,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    infoData: infoData),

                // GlowNotificationContainer(
                //     child: (i) {
                //       return HomeItemSpaceParty();
                //     },
                //     infoData: infoData)

                //TODO:动态

                ListViewWidget(
                  bottom: 40,
                  isUiHead: false,
                  uiHeadWidget: Container(),
                  itemUi: (index) {
                    return DetailPageItemDynamic(
                      index: index,
                    );
                  },
                  scrollDirection: Axis.vertical,
                ),
                GlowNotificationContainer(
                    child: (i) {
                      return Container();
                    },
                    infoData: infoData),
              ],
            ),
          )
        ],
      ),
    );
  }
}
