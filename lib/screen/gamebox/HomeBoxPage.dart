import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:progress_tab_bar/progress_tab_bar.dart';
import 'package:gamebox_plugin/routes/routes_name.dart';
import 'package:gamebox_plugin/screen/gamebox/ui_list/ListViewWidget.dart';
import 'package:gamebox_plugin/screen/gamebox/ui_title/UiTitleWidget.dart';

import '../../main.dart';
import '../../res/colors.dart';
import '../../utils/image/ImageAssets.dart';
import '../../utils/screen_utils.dart';
import '../../widget/small_tips/SmallTipsWidget.dart';
import 'home/MainFuncButton.dart';
import 'home/SearchBoxBar.dart';
import 'item/HomePageHotItemRecommand.dart';
import 'item/HomePageItemSpaceParty.dart';

//section HomePage 首页
/*
*   _   _                      ____
*  | | | | ___  _ __ ___   ___|  _ \ __ _  __ _  ___
*  | |_| |/ _ \| '_ ` _ \ / _ \ |_) / _` |/ _` |/ _ \
*  |  _  | (_) | | | | | |  __/  __/ (_| | (_| |  __/
*  |_| |_|\___/|_| |_| |_|\___|_|   \__,_|\__, |\___|
*                                         |___/
*/

class HomeBoxPage extends StatefulWidget {
  HomeBoxPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeBoxPageState();
  }
}

class _HomeBoxPageState extends State<HomeBoxPage> {
  int _selectedTab = 0;
  bool _disabled = false;
  double oneLetter = 28;

  CustomLayoutOption? customLayoutOption;

  @override
  void initState() {
    super.initState();

    customLayoutOption = CustomLayoutOption(
      startIndex: -1,
      stateCount: 3,
    );
    customLayoutOption?.addRotate([-0 / 180, 0.0, 0 / 180]);
    customLayoutOption?.addTranslate([
      Offset(-200.0, 0.0),
      Offset(0.0, 0.0),
      Offset(200.0, 0.0),
    ]);
    // Future.delayed(Duration(seconds: 1), () {
    //
    //
    // });
  }

  @override
  void dispose() {
    super.dispose();
  }

  ///TODO:热门推荐List
  Widget hotRecommandContent(int tabNr) {
    return ListViewWidget(
      itemUi: (index) {
        return HomePageHotItemRecommand();
      },
      height: 150,
      scrollDirection: Axis.horizontal,
    );
  }

  ///TODO:空间派对List
  Widget spaceParty(Widget widget) {
    return ListViewWidget(
      height: HYSizeFit.setRpx(640),
      isUiHead: true,
      uiHeadWidget: widget,
      itemUi: (index) {
        return HomePageItemSpaceParty();
      },
      // height: 150,
      // scrollDirection: Axis.horizontal,
    );
  }

  // final List<String> images = [
  //   'https://via.placeholder.com/350x150',
  //   'https://via.placeholder.com/350x150',
  //   'https://via.placeholder.com/350x150',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          setImage("home_bg_top", width: -1, height: 248.0),

          // SizedBox(
          //   height: HYSizeFit.setRpx(16),
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //TODO: 顶部搜索框
              SearchBoxBar(
                gameboxSign: () {
                  Fluttertoast.showToast(msg: "去签到");
                },
                enabled: false,
                edtBtn: () {
                  Navigator.pushNamed(
                      navigatorKey.currentState!.context, GAME_SEARCH_PAGE);
                },
              ),
              spaceParty(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: HYSizeFit.setRpx(22),
                  ),
                  SizedBox(
                    width: HYSizeFit.screenWidth,
                    // height: HYSizeFit.sethRpx(157),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MainFuncButton(
                          left: 16,
                          width: 170,
                          height: 157,
                          setImage: 'gamebox_friend',
                          title: '盲盒交友',
                          subTitle: '相遇一起铭记',
                          leftColor: 0xfffff5c3,
                          rightColor: 0xffff6ca1,
                          titleSize: 20,
                          subTitleSize: 10,
                          imageWidth: 149,
                          imageHeight: 161,
                          imagePaddingRight: -20,
                          imagePaddingBottom: -20,
                          onTap: () {
                            Navigator.pushNamed(
                                navigatorKey.currentState!.context,
                                GAME_PLAYER_DETAIL_PAGE);
                          },
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MainFuncButton(
                              right: 16,
                              width: 169,
                              height: 77,
                              setImage: 'gamebox_heart',
                              title: '送TA获芳心',
                              subTitle: '相遇一起铭记',
                              rightColor: 0xffDD8EFC,
                              leftColor: 0xffF6D1FF,
                              titleSize: 16,
                              subTitleSize: 8,
                              imageWidth: 80,
                              imageHeight: 57,
                              onTap: () {
                                Navigator.pushNamed(
                                    navigatorKey.currentState!.context,
                                    DYNAMIC_PAGE);
                              }
                            ),
                            SizedBox(
                              height: HYSizeFit.setRpx(3),
                            ),
                            MainFuncButton(
                              right: 16,
                              width: 169,
                              height: 77,
                              setImage: 'gamebox_rocket',
                              title: '送TA获热搜',
                              subTitle: '相遇一起铭记',
                              leftColor: 0xffb1f5f5,
                              rightColor: 0xffadb8ff,
                              titleSize: 16,
                              subTitleSize: 8,
                              imageWidth: 60,
                              imageHeight: 94,
                              imagePaddingRight: 0,
                              imagePaddingBottom: -20,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  ///TODO:热门推荐
                  Stack(
                    children: [
                      Positioned(
                          child: getSmallTipsWidget(),
                          left: HYSizeFit.setRpx(16),
                          top: HYSizeFit.setRpx(21)),
                      Container(
                        // color: Colors.black,
                        width: HYSizeFit.screenWidth,
                        margin: EdgeInsets.only(
                            left: HYSizeFit.setRpx(16),
                            top: HYSizeFit.setRpx(0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: HYSizeFit.setRpx(
                                      GetPlatform.isAndroid ? 12 : 16),
                                  bottom: HYSizeFit.setRpx(8),
                                  left: HYSizeFit.setRpx(8)),
                              child: ProgressTabBar(
                                animationCurve: Curves.easeInOut,
                                tabWidth: 100,
                                // height: ,
                                spacing: HYSizeFit.setRpx(8),
                                // outlineWidth:0,
                                selectedLabelColor: string2Color("#2B2B2B"),
                                labelColor: string2Color("#919191"),
                                color: Colors.yellow,
                                selectedTab: _selectedTab,
                                autoScrollOffset: 0,
                                disabled: _disabled,
                                children: [
                                  ProgressTab(
                                    label: "热门推荐",
                                    // label: "热",
                                    onPressed: () {
                                      setState(() {
                                        _selectedTab = 0;
                                      });
                                    },
                                    // width: HYSizeFit.setRpx(oneLetter * "热门推荐".length),
                                    // spacing: HYSizeFit.setRpx(
                                    //     oneLetter * "热门推荐".length / 1.5),
                                  ),
                                  ProgressTab(
                                    label: "关注",
                                    onPressed: () {
                                      setState(() {
                                        _selectedTab = 1;
                                      });
                                    },
                                    // width: HYSizeFit.setRpx(oneLetter * "关注啦啦啦".length),
                                    // spacing:
                                    //     HYSizeFit.setRpx(oneLetter * "关注".length / 1.5),
                                  ),
                                  ProgressTab(
                                    label: "交友",
                                    onPressed: () {
                                      setState(() {
                                        _selectedTab = 2;
                                      });
                                    },
                                    // width: HYSizeFit.setRpx(oneLetter * "交友".length),
                                    // spacing:
                                    // HYSizeFit.setRpx(oneLetter * "交友".length / 1.5),
                                  ),
                                  // ProgressTab(
                                  //   label: "Step 4",
                                  //   onPressed: () {
                                  //     setState(() {
                                  //       _selectedTab = 3;
                                  //     });
                                  //   },
                                  //   width: 125,
                                  // ),
                                  // ProgressTab(
                                  //   label: "Step 5",
                                  //   onPressed: () {
                                  //     setState(() {
                                  //       _selectedTab = 4;
                                  //     });
                                  //   },
                                  //   width: 125,
                                  // ),
                                  // ProgressTab(
                                  //   label: "Step 6",
                                  //   onPressed: () {
                                  //     setState(() {
                                  //       _selectedTab = 5;
                                  //     });
                                  //   },
                                  //   width: 125,
                                  // ),
                                  // ProgressTab(
                                  //   label: "Step 7",
                                  //   onPressed: () {
                                  //     setState(() {
                                  //       _selectedTab = 6;
                                  //     });
                                  //   },
                                  //   width: 125,
                                  // ),
                                  // ProgressTab(
                                  //   label: "Step 8",
                                  //   onPressed: () {
                                  //     setState(() {
                                  //       _selectedTab = 7;
                                  //     });
                                  //   },
                                  //   width: 125,
                                  // ),
                                ],
                              ),
                            ),
                            Container(
                              child: hotRecommandContent(_selectedTab),
                              // child: Container(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  ///TODO:空闲派对
                  Container(
                    margin: EdgeInsets.only(
                        left: HYSizeFit.setRpx(16),
                        top: HYSizeFit.setRpx(13),
                        bottom: HYSizeFit.setRpx(10)),
                    child: UiTitleWidget(title: "空间派对"),
                  ),
                ],
              ))
            ],
          ),

          // Container(
          //   height: 200, // Set a fixed height for the Swiper
          //   child: Container(
          //     height: 200, // Set a fixed height for the Swiper
          //     child: Swiper(
          //       itemBuilder: (BuildContext context, int index) {
          //         return Container(
          //           height: 200,
          //           child: ClipRRect(
          //             borderRadius: BorderRadius.circular(8.0),
          //             child: Image.network(
          //               images[index],
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //         );
          //       },
          //       itemCount: images.length,
          //       layout: SwiperLayout.CUSTOM,
          //       customLayoutOption: customLayoutOption,
          //       itemWidth: MediaQuery.of(context).size.width * 0.7,
          //       itemHeight: 200,
          //       pagination: null,
          //       control: null,
          //     ),
          //   ),
          // )
          // Swiper(
          //   itemBuilder: (BuildContext context, int index) {
          //     return Container(
          //       width: HYSizeFit.setRpx(26),
          //       height: HYSizeFit.setRpx(26),
          //       color: Colors.black,
          //     );
          //   },
          //   itemCount: 10,
          //   itemWidth: 300.0,
          //   layout: SwiperLayout.STACK,
          //   autoplay: true,
          //   // autoplayDelay: 10,
          //   autoplayDisableOnInteraction: true,
          //   containerHeight: HYSizeFit.setRpx(26),
          //   containerWidth: HYSizeFit.setRpx(26),
          //   // curve: Curves.easeInOut,
          //   fade: 0.2,
          //   scale: 0.1,
          //
          // )
        ],
      ),
    );
  }
}
