import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:gamebox_plugin/utils/screen_utils.dart';

import '../util/svg/SVGUtil.dart';

class HomePageItemSpaceParty extends StatefulWidget {
  const HomePageItemSpaceParty({Key? key}) : super(key: key);

  @override
  State<HomePageItemSpaceParty> createState() => _HomePageItemSpacePartyState();
}

class _HomePageItemSpacePartyState extends State<HomePageItemSpaceParty> {
  // List<Widget> headIcons = [];

  final List<String> images = [
    'https://via.placeholder.com/350x150',
    'https://via.placeholder.com/350x150',
    'https://via.placeholder.com/350x150',
    'https://via.placeholder.com/350x150',
  ];

  CustomLayoutOption? customLayoutOption;

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
      Offset(60.0, 0.0),
      Offset(40.0, 0.0),
      Offset(20.0, 0.0),
      Offset(0.0, 0.0),
    ]);
  }

  // Widget getHeadIcon({int index = 0}) {
  //   return Container(
  //     child: Stack(
  //       children: <Widget>[
  //         Container(
  //           width: HYSizeFit.setRpx(26),
  //           height: HYSizeFit.setRpx(26),
  //           decoration: BoxDecoration(
  //             color: index % 2 == 0 ? Colors.yellow : Colors.blue,
  //             borderRadius: BorderRadius.circular(8.0),
  //           ),
  //         ),
  //         Container(
  //           width: HYSizeFit.setRpx(26),
  //           height: HYSizeFit.setRpx(26),
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
  //     margin: EdgeInsets.only(left: HYSizeFit.setRpx(index * 20)),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // headIcons = [];
    // for (int i = 0; i < 4; i++) {
    //   headIcons.add(getHeadIcon(index: i));
    // }
    return Container(
      width: HYSizeFit.screenWidth,
      height: HYSizeFit.setRpx(112),
      margin: EdgeInsets.only(
          left: HYSizeFit.setRpx(16),
          right: HYSizeFit.setRpx(16),
          bottom: HYSizeFit.setRpx(4)),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x1c000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
          Row(
            children: [
              //TODO：头像
              Container(
                width: HYSizeFit.setRpx(92),
                height: HYSizeFit.setRpx(92),
                margin: EdgeInsets.only(
                    left: HYSizeFit.setRpx(12),
                    top: HYSizeFit.setRpx(10),
                    bottom: HYSizeFit.setRpx(10)),
                child: Stack(
                  children: <Widget>[
                    Container(
                      // decoration: BoxDecoration(
                      //   image: DecorationImage(
                      //     image: const AssetImage(''),
                      //     fit: BoxFit.fill,
                      //   ),
                      // ),
                      margin: EdgeInsets.fromLTRB(12.0, 34.0, 17.0, 89.0),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(14.0),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000).withOpacity(0.07),
                            offset: Offset(0, 3),
                            blurRadius: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: HYSizeFit.setRpx(15)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: HYSizeFit.setRpx(14)),
                  Text(
                    '心之声倾听你的声音',
                    style: TextStyle(
                      fontFamily: 'Source Han Sans CN',
                      fontSize: HYSizeFit.setRpx(16),
                      color: const Color(0xff2b2b2b),
                      letterSpacing: -0.192,
                      fontWeight: FontWeight.w500,
                    ),
                    softWrap: false,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        // width: 44.0,
                        height: HYSizeFit.setRpx(20),
                        margin: EdgeInsets.only(
                          top: HYSizeFit.setRpx(5),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.0, 0.136),
                              end: Alignment(-1.0, 0.159),
                              colors: [
                                const Color(0xff6abc70),
                                const Color(0xffc6e6b6)
                              ],
                              stops: [0.0, 1.0],
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  // width: HYSizeFit.setRpx(12),
                                  // height: HYSizeFit.setRpx(12),
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        width: HYSizeFit.setRpx(11),
                                        height: HYSizeFit.setRpx(11),
                                        margin: EdgeInsets.only(
                                            left: HYSizeFit.setRpx(5), top: 0),
                                        child: SizedBox.expand(
                                            child: SvgPicture.string(
                                          SVGUtil.svg_yhcrlg,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        )),
                                      ),
                                      Container(
                                        width: HYSizeFit.setRpx(5.8),
                                        height: HYSizeFit.setRpx(5.8),
                                        margin: EdgeInsets.only(
                                            left: HYSizeFit.setRpx(12),
                                            top: HYSizeFit.setRpx(5)),
                                        child: SvgPicture.string(
                                          SVGUtil.svg_tft774,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                        width: HYSizeFit.setRpx(1.65),
                                        height: HYSizeFit.setRpx(3.44),
                                        margin: EdgeInsets.only(
                                            left: HYSizeFit.setRpx(8),
                                            top: HYSizeFit.setRpx(4)),
                                        child: SvgPicture.string(
                                          SVGUtil.svg_jstcj,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: HYSizeFit.setRpx(5)),
                                ConstrainedBox(
                                  constraints:
                                      const BoxConstraints(maxWidth: 66),
                                  child: Text(
                                    '交友121313',
                                    style: TextStyle(
                                      fontFamily: 'Source Han Sans CN',
                                      fontSize: 10,
                                      color: const Color(0xffffffff),
                                      letterSpacing: -0.12,
                                      fontWeight: FontWeight.w500,
                                      shadows: [
                                        Shadow(
                                          color: const Color(0x1f000000),
                                          blurRadius: 1,
                                        )
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                    softWrap: false,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(width: HYSizeFit.setRpx(5)),
                              ]),
                        ),
                        color: const Color(0xfff5f5f5),
                      ),
                      Container(
                        alignment: AlignmentDirectional.centerEnd,
                        margin: EdgeInsets.only(
                          top: HYSizeFit.setRpx(5),
                          right: HYSizeFit.setRpx(5),
                        ),
                        // width: 66.0,
                        height: HYSizeFit.setRpx(20),
                        padding: EdgeInsets.only(
                          left: HYSizeFit.setRpx(5),
                          right: HYSizeFit.setRpx(5),
                        ),
                        decoration: const BoxDecoration(
                          color: Color(0xfff5f5f5),
                          // color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 66),
                          child: Text(
                            '相遇一起铭记',
                            style: TextStyle(
                              fontFamily: 'Source Han Sans CN',
                              fontSize: HYSizeFit.setRpx(6),
                              color: const Color(0xffababab),
                              letterSpacing: -0.072,
                            ),
                            textAlign: TextAlign.left,
                            softWrap: false,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Stack(
                      // children: headIcons,
                      children: [
                        Container(
                          height: 26, // Set a fixed height for the Swiper
                          child: Container(
                            height: 26, // Set a fixed height for the Swiper
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
                                      width: HYSizeFit.setRpx(26),
                                      height: HYSizeFit.setRpx(26),
                                      decoration: BoxDecoration(
                                        color: index % 4 == 0
                                            ? Colors.yellow
                                            : index % 4 == 1
                                                ? Colors.red
                                                : index % 4 == 2
                                                    ? Colors.green
                                                    : Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    Container(
                                      width: HYSizeFit.setRpx(26),
                                      height: HYSizeFit.setRpx(26),
                                      decoration: BoxDecoration(
                                          // color: Colors.yellow,
                                          // borderRadius: BorderRadius.circular(131.0),
                                          // image: DecorationImage(
                                          //   image: const AssetImage(''),
                                          //   fit: BoxFit.fill,
                                          // ),
                                          ),
                                      margin: EdgeInsets.fromLTRB(
                                          0.0, 0.0, 0.0, 8.0),
                                    ),
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
                              itemWidth: 26 * 4,
                              itemHeight: 26,
                              pagination: null,
                              control: null,
                              autoplayDelay: 2000,
                              duration: 2000,
                              // 设置为水平滚动，默认值
                            ),
                          ),
                        ),
                        Row(children: [
                          Container(
                            margin: EdgeInsets.only(left: HYSizeFit.setRpx(0)),
                            width: HYSizeFit.setRpx(26),
                            height: HYSizeFit.setRpx(26),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(1.0, 0.136),
                                end: Alignment(-1.0, 0.159),
                                colors: [
                                  Color(0xffffffff).withOpacity(0.05),
                                  Color(0xffffffff).withOpacity(0.65),
                                ],
                                stops: [0.0, 1.0],
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          SizedBox(
                              width: HYSizeFit.setRpx(
                                  GetPlatform.isAndroid ? 32 : 26)),
                          Container(
                            margin: EdgeInsets.only(left: HYSizeFit.setRpx(6)),
                            width: HYSizeFit.setRpx(26),
                            height: HYSizeFit.setRpx(26),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(1.0, 0.136),
                                end: Alignment(-1.0, 0.159),
                                colors: [
                                  Color(0xffffffff).withOpacity(0.85),
                                  Color(0xffffffff).withOpacity(0.05),
                                ],
                                stops: [0.0, 1.0],
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          )
                        ]),
                      ],
                    ),
                    margin: EdgeInsets.only(top: HYSizeFit.setRpx(15)),
                  ),
                ],
              )
            ],
          ),
          Positioned(
            child: Row(
              children: [
                Container(
                  width: HYSizeFit.setRpx(9.5),
                  height: HYSizeFit.setRpx(10.9),
                  child: SvgPicture.string(
                    SVGUtil.svg_ymankn,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(width: HYSizeFit.setRpx(3)),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 66),
                  child: Text(
                    '44732',
                    style: TextStyle(
                      fontFamily: 'Source Han Sans CN',
                      fontSize: HYSizeFit.setRpx(11),
                      color: const Color(0xff8e8e93),
                      letterSpacing: -0.132,
                      fontWeight: FontWeight.w300,
                    ),
                    // textAlign: TextAlign.center,
                    softWrap: false,
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            right: HYSizeFit.setRpx(11),
            bottom: HYSizeFit.setRpx(15),
          )
        ],
      ),
    );
  }
}
