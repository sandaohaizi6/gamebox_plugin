import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:gamebox_plugin/screen/gamebox/detail_page/ui_banner/DetailBanner.dart';
import 'package:gamebox_plugin/screen/gamebox/detail_page/ui_headicon_online_care/HeadiconOnlineCare.dart';
import 'package:gamebox_plugin/screen/gamebox/detail_page/ui_info_dynamic_gift/InfoDynamicGift.dart';
import 'package:gamebox_plugin/screen/gamebox/detail_page/ui_name_id_level_fans_age/NameIdLevelFansAge.dart';
import 'package:gamebox_plugin/screen/gamebox/detail_page/ui_singsong_enter_room/SingsongEnterRoom.dart';
import 'package:gamebox_plugin/screen/gamebox/detail_page/ui_talk_focus/TalkFocus.dart';
import 'package:gamebox_plugin/screen/gamebox/widget/InkWellCustom.dart';

import '../../../commons/global.dart';
import '../../../utils/screen_utils.dart';

class PlayerDetailInfoPage extends StatefulWidget {
  @override
  _PlayerDetailInfoPageState createState() => _PlayerDetailInfoPageState();
}

class _PlayerDetailInfoPageState extends State<PlayerDetailInfoPage>
    with TickerProviderStateMixin {
  late final TabController primaryTC;
  final ScrollController sc = ScrollController();

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

  final List<String> images = [
    'https://via.placeholder.com/350x150',
    'https://via.placeholder.com/350x150',
    'https://via.placeholder.com/350x150',
    'https://via.placeholder.com/350x150',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        //TODO:banner 背景
        DetailBanner(images: images),
        //TODO:返回按钮
        InkWellCustom(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.only(
                left: HYSizeFit.setRpx(10), top: HYSizeFit.setRpx(45)),
            child: Row(
              children: [
                Image(
                  width: HYSizeFit.setRpx(34),
                  fit: BoxFit.fitWidth,
                  image:
                      AssetImage(Global.getImageResource("backArrowIcon.png")),
                  color: Colors.black.withOpacity(0.4),
                ),
                SizedBox(
                  width: HYSizeFit.setRpx(4),
                ),
              ],
            ),
          ),
        ),

        //TODO:抽屉
        _buildScaffoldBody(),
        //TODO:聊一聊 关注
        TalkFocus(),
      ]),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.update),
      //   onPressed: () {
      //     //change pinnedHeaderHeight here
      //     final double before = pinnedHeaderHeight;
      //     pinnedHeaderHeight += 100.0;
      //     sc.position.applyContentDimensions(sc.position.minScrollExtent,
      //         sc.position.maxScrollExtent + before);
      //   },
      // ),
    );
  }

  late double pinnedHeaderHeight;

  Widget _buildScaffoldBody() {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    pinnedHeaderHeight =
        //statusBar height
        // statusBarHeight +
        //pinned SliverAppBar height in header
        kToolbarHeight / 1.8;
    return ExtendedNestedScrollView(
      controller: sc,
      headerSliverBuilder: (BuildContext c, bool f) {
        return <Widget>[
          SliverAppBar(
              pinned: true,
              expandedHeight: HYSizeFit.setRpx(150),
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              title: const Text('pinned header height'),
              flexibleSpace: FlexibleSpaceBar(
                //centerTitle: true,
                collapseMode: CollapseMode.pin,
                // background:
                // Image.asset(
                //   'assets/467141054.jpg',
                //   fit: BoxFit.fill,
                // ),
                background: Container(
                    // height: 26, // Set a fixed height for the Swiper
                    ),
              ))
        ];
      },
      //1.[pinned sliver header issue](https://github.com/flutter/flutter/issues/22393)
      pinnedHeaderSliverHeightBuilder: () {
        return pinnedHeaderHeight;
      },
      body: Stack(
        children: [
          Positioned(
            child: Container(
              width: HYSizeFit.screenWidth,
              height: HYSizeFit.screenHeight,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
            ),
            top: HYSizeFit.setRpx(30),
          ),

          //TODO:用户头像
          HeadiconOnlineCare(),

          Container(
            margin: EdgeInsets.only(
              top: HYSizeFit.setRpx(112),
              left: HYSizeFit.setRpx(16),
              right: HYSizeFit.setRpx(16),
            ),
            child: Column(children: <Widget>[
              //TODO:用户名字 id 粉丝 年龄
              const NameIdLevelFansAge(),
              //TODO:当前正在：点唱
              const SingsongEnterRoom(),
            ], crossAxisAlignment: CrossAxisAlignment.start),
          ),

          Container(
            color: Colors.white,
            margin: EdgeInsets.only(
              top: HYSizeFit.setRpx(251),
              left: HYSizeFit.setRpx(16),
              right: HYSizeFit.setRpx(16),
            ),
            child: //TODO:资料、动态、礼物
                const InfoDynamicGift(),
          )

          // Container(
          //   margin: EdgeInsets.only(
          //   ),
          //   child: Stack(
          //     children: [
          //       ,
          //     ],
          //   ),
          // ListViewWidget(
          //           isUiHead: true,
          //           foot: FooterCustomWidget(
          //               loadIndicatorExtents: HYSizeFit.setRpx(0),
          //               // noMores: currentPage == pages ? true : false),
          //               noMores: true),
          //           bottom: HYSizeFit.setRpx(50),
          //           uiHeadWidget:
          //
          //           itemUi: Container(),
          //         ),
          //       ),
        ],
      ),
    );
  }
}
