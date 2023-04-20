import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:gamebox_plugin/utils/screen_utils.dart';

import '../util/svg/SVGUtil.dart';

class HomePageHotItemRecommand extends StatefulWidget {
  const HomePageHotItemRecommand({Key? key}) : super(key: key);

  @override
  State<HomePageHotItemRecommand> createState() =>
      _HomePageHotItemRecommandState();
}

class _HomePageHotItemRecommandState extends State<HomePageHotItemRecommand> {
  // List<Widget> headIcons = [];
  final List<String> images = [
    'https://via.placeholder.com/350x150',
    'https://via.placeholder.com/350x150',
    'https://via.placeholder.com/350x150',
    'https://via.placeholder.com/350x150',
  ];
  CustomLayoutOption? customLayoutOption;

  // Widget getHeadIcon({int index = 0}) {
  //   return Container(
  //     child: Stack(
  //       children: <Widget>[
  //         Container(
  //           width: HYSizeFit.setRpx(14),
  //           height: HYSizeFit.setRpx(14),
  //           decoration: BoxDecoration(
  //             color: index % 2 == 0 ? Colors.yellow : Colors.blue,
  //             borderRadius: BorderRadius.circular(11.0),
  //           ),
  //         ),
  //         Container(
  //           width: HYSizeFit.setRpx(14),
  //           height: HYSizeFit.setRpx(14),
  //           decoration: BoxDecoration(
  //               // color: Colors.yellow,
  //               // borderRadius: BorderRadius.circular(131.0),
  //               // image: DecorationImage(
  //               //   image: const AssetImage(''),
  //               //   fit: BoxFit.fill,
  //               // ),
  //               ),
  //           margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
  //         ),
  //       ],
  //     ),
  //     margin: EdgeInsets.only(left: HYSizeFit.setRpx(index * 11)),
  //   );
  // }

  @override
  void initState() {
    super.initState();
    customLayoutOption = CustomLayoutOption(
      startIndex: 0,
      stateCount: 4,
    );
    // customLayoutOption?.addRotate([-0 / 180, 0.0, 0 / 180]);
    customLayoutOption?.addTranslate([
      // Offset(0.0, 0.0),
      // Offset(20.0, 0.0),
      // Offset(40.0, 0.0),
      // Offset(60.0, 0.0),
      // Offset(60.0, 0.0),
      Offset(33.0, 0.0),
      Offset(22.0, 0.0),
      Offset(11.0, 0.0),
      Offset(0.0, 0.0),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    // headIcons = [];
    // for (int i = 0; i < 4; i++) {
    //   headIcons.add(getHeadIcon(index: i));
    // }
    return Container(
      margin: EdgeInsets.only(right: HYSizeFit.setRpx(4)),
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                width: HYSizeFit.setRpx(112),
                height: HYSizeFit.setRpx(112),
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.all(Radius.circular(10))

                    // image: DecorationImage(
                    //   image: const AssetImage(''),
                    //   fit: BoxFit.fill,
                    // ),
                    ),
              ),
              Container(
                height: HYSizeFit.setRpx(14),
                margin: EdgeInsets.only(
                    left: HYSizeFit.setRpx(8), top: HYSizeFit.setRpx(7)),
                padding: EdgeInsets.only(top: HYSizeFit.setRpx(1)),
                decoration: BoxDecoration(
                  color: const Color(0xc2474546),
                  borderRadius: BorderRadius.circular(131.0),
                ),
                child: Stack(
                  children: [
                    SvgPicture.string(
                      SVGUtil.svg_gx1vod,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: HYSizeFit.setRpx(20),
                          right: HYSizeFit.setRpx(8)),
                      child: Text(
                        '55353',
                        style: TextStyle(
                          fontFamily: 'DIN',
                          fontSize: 9,
                          color: const Color(0xffffffff),
                          letterSpacing: -0.108,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: HYSizeFit.setRpx(82)),
                width: HYSizeFit.setRpx(112),
                height: HYSizeFit.setRpx(30),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.0),
                      colors: [
                        const Color(0x00474546).withAlpha(0),
                        const Color(0xff0e0e0e).withOpacity(0.5)
                      ],
                      stops: [0.0, 1.0],
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
              ),
              Container(
                margin: EdgeInsets.only(top: HYSizeFit.setRpx(92)),
                child: Stack(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              // decoration: BoxDecoration(
                              //   image: DecorationImage(
                              //     image: const AssetImage(''),
                              //     fit: BoxFit.fill,
                              //   ),
                              // ),
                              margin: EdgeInsets.fromLTRB(3.0, 0.0, 0.0, 3.0),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xff371717),
                                borderRadius: BorderRadius.circular(11.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      child: Container(
                        height: 14, // Set a fixed height for the Swiper
                        child: Swiper(
                          autoplay: true,
                          // reverse: true,
                          itemBuilder: (BuildContext context, int index) {
                            return

                                //   Container(
                                //   height: 200,
                                //   child: ClipRRect(
                                //     borderRadius: BorderRadius.circular(8.0),
                                //     child: Image.network(
                                //       images[index],
                                //       fit: BoxFit.cover,
                                //     ),
                                //   ),
                                // )

                                Stack(
                              children: <Widget>[
                                Container(
                                  width: HYSizeFit.setRpx(14),
                                  height: HYSizeFit.setRpx(14),
                                  decoration: BoxDecoration(
                                    color: index % 4 == 0
                                        ? Colors.yellow
                                        : index % 4 == 1
                                            ? Colors.red
                                            : index % 4 == 2
                                                ? Colors.green
                                                : Colors.blue,
                                    borderRadius: BorderRadius.circular(11.0),
                                  ),
                                ),

                                // Container(
                                //   width: HYSizeFit.setRpx(14),
                                //   height: HYSizeFit.setRpx(14),
                                //   decoration: BoxDecoration(
                                //       // color: Colors.yellow,
                                //       // borderRadius: BorderRadius.circular(131.0),
                                //       // image: DecorationImage(
                                //       //   image: const AssetImage(''),
                                //       //   fit: BoxFit.fill,
                                //       // ),
                                //       ),
                                //   margin:
                                //       EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
                                // ),
                              ],
                            );
                          },
                          itemCount: images.length,
                          layout: SwiperLayout.CUSTOM,
                          customLayoutOption: customLayoutOption,
                          curve: Curves.easeInCubic,
                          // allowImplicitScrolling: true,
                          // autoplayDisableOnInteraction: true,
                          loop: true,
                          // plugins: [SwiperPagination.fraction],
                          physics: BouncingScrollPhysics(),
                          // itemWidth: MediaQuery.of(context).size.width * 0.7,
                          itemWidth: 14 * 4,
                          itemHeight: 14,
                          pagination: null,
                          control: null,
                          autoplayDelay: 2000,
                          duration: 2000,
                          // 设置为水平滚动，默认值
                        ),
                      ),
                      margin: EdgeInsets.only(left: HYSizeFit.setRpx(6)),
                    ),
                    Row(children: [
                      Container(
                        margin: EdgeInsets.only(left: HYSizeFit.setRpx(6)),
                        width: HYSizeFit.setRpx(14),
                        height: HYSizeFit.setRpx(14),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(1.0, 0.136),
                            end: Alignment(-1.0, 0.159),
                            colors: [
                              Color(0xffffffff).withOpacity(0.05),
                              Color(0xff0e0e0e).withOpacity(0.2),
                            ],
                            stops: [0.0, 1.0],
                          ),
                          borderRadius: BorderRadius.circular(11.0),
                        ),
                      ),
                      SizedBox(
                          width: HYSizeFit.setRpx(
                              GetPlatform.isAndroid ? 14 : 12)),
                      Container(
                        margin: EdgeInsets.only(left: HYSizeFit.setRpx(6)),
                        width: HYSizeFit.setRpx(14),
                        height: HYSizeFit.setRpx(14),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(1.0, 0.136),
                            end: Alignment(-1.0, 0.159),
                            colors: [
                              Color(0xff0e0e0e).withOpacity(0.1),
                              Color(0xffffffff).withOpacity(0.05),
                            ],
                            stops: [0.0, 1.0],
                          ),
                          borderRadius: BorderRadius.circular(11.0),
                        ),
                      )
                    ]),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: HYSizeFit.setRpx(6),
          ),
          Container(
            width: HYSizeFit.setRpx(112),
            child: Text(
              '相遇一起铭记相遇一起铭记',
              style: TextStyle(
                fontFamily: 'Source Han Sans CN',
                fontSize: HYSizeFit.setRpx(11),
                color: const Color(0xff474546),
                letterSpacing: -0.132,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              textHeightBehavior:
                  const TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          )
        ],
      ),
    );
  }
}
