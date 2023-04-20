import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:gamebox_plugin/utils/image/ImageAssets.dart';
import 'package:gamebox_plugin/utils/screen_utils.dart';

import '../util/svg/SVGUtil.dart';

//section  Detail Page dynamic
/*
*   ____       _        _ _    ____                         _                             _
*  |  _ \  ___| |_ __ _(_) |  |  _ \ __ _  __ _  ___     __| |_   _ _ __   __ _ _ __ ___ (_) ___
*  | | | |/ _ \ __/ _` | | |  | |_) / _` |/ _` |/ _ \   / _` | | | | '_ \ / _` | '_ ` _ \| |/ __|
*  | |_| |  __/ || (_| | | |  |  __/ (_| | (_| |  __/  | (_| | |_| | | | | (_| | | | | | | | (__
*  |____/ \___|\__\__,_|_|_|  |_|   \__,_|\__, |\___|   \__,_|\__, |_| |_|\__,_|_| |_| |_|_|\___|
*                                         |___/               |___/
*/
class DetailPageItemDynamic extends StatefulWidget {
  int index = 0;

  DetailPageItemDynamic({Key? key, this.index = 0}) : super(key: key);

  @override
  State<DetailPageItemDynamic> createState() => _DetailPageItemDynamicState();
}

class _DetailPageItemDynamicState extends State<DetailPageItemDynamic> {
  final List<String> images = [
    'game_box_placeholder',
    'game_box_placeholder',
    'game_box_placeholder',
    // 'game_box_placeholder',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: HYSizeFit.screenWidth,
      // height: HYSizeFit.setRpx(112),
      margin: EdgeInsets.only(bottom: HYSizeFit.setRpx(4)),
      child: Stack(
        children: <Widget>[
          // Container(
          //   decoration: BoxDecoration(
          //     color: const Color(0xffffffff),
          //     borderRadius: BorderRadius.circular(16.0),
          //     boxShadow: [
          //       BoxShadow(
          //         color: const Color(0x1c000000),
          //         offset: Offset(0, 3),
          //         blurRadius: 6,
          //       ),
          //     ],
          //   ),
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                child: Text(
                  '2013年',
                  style: TextStyle(
                    fontFamily: 'Source Han Sans CN',
                    fontSize: HYSizeFit.setRpx(14),
                    color: const Color(0xff474546),
                    letterSpacing: -0.336,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                visible: widget.index == 0,
              ),
              SizedBox(
                height: HYSizeFit.setRpx(8),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Source Han Sans CN',
                        fontSize: HYSizeFit.setRpx(16),
                        color: const Color(0xff474546),
                        letterSpacing: -0.384,
                      ),
                      children: [
                        TextSpan(
                          text: '13',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: '/',
                          style: TextStyle(
                            fontSize: HYSizeFit.setRpx(11),
                            letterSpacing: -0.264,
                          ),
                        ),
                        TextSpan(
                          text: '04月',
                          style: TextStyle(
                            fontSize: HYSizeFit.setRpx(11),
                            letterSpacing: -0.264,
                          ),
                        ),
                      ],
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                  SizedBox(
                    width: HYSizeFit.setRpx(13),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: HYSizeFit.setRpx(2)),
                    child: Text(
                      '09:27:57',
                      style: TextStyle(
                        fontFamily: 'Source Han Sans CN',
                        fontSize: HYSizeFit.setRpx(12),
                        color: const Color(0xffb2b2b2),
                        letterSpacing: -0.28800000000000003,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: HYSizeFit.setRpx(8),
              ),
              Container(
                // width: HYSizeFit.setRpx(290),
                child: Text(
                  '愿世界和平，一切安好。煽风点火广告费很多打个电话非官方个你发那个。',
                  style: TextStyle(
                    fontFamily: 'Source Han Sans CN',
                    fontSize: HYSizeFit.setRpx(14),
                    color: const Color(0xff444242),
                    letterSpacing: -0.28800000000000003,
                    fontWeight: FontWeight.w500,
                  ),
                  softWrap: false,
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(top: HYSizeFit.setRpx(8)),
                  itemCount: images.length,
                  itemBuilder: (context, int index) {
                    ///TODO:自定义金额
                    return Row(
                      children: [
                        setImage(images[index],
                            width: HYSizeFit.setRpx(images.length % 2 == 1
                                ? GetPlatform.isAndroid
                                    ? 110
                                    : 106
                                : GetPlatform.isAndroid
                                    ? 175
                                    : 160),
                            height: HYSizeFit.setRpx(images.length % 2 == 1
                                ? GetPlatform.isAndroid
                                    ? 110
                                    : 106
                                : GetPlatform.isAndroid
                                    ? 175
                                    : 160)),
                        // SizedBox(
                        //   width: HYSizeFit.setRpx(7),
                        // ),
                        // setImage(images[index],
                        //     width: HYSizeFit.setRpx(168),
                        //     height: HYSizeFit.setRpx(168)),
                      ],
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        images.length == 1 || images.length % 2 == 0 ? 2 : 3,
                    mainAxisSpacing:
                        HYSizeFit.setRpx(images.length % 2 == 1 ? 6 : 7),
                    crossAxisSpacing:
                        HYSizeFit.setRpx(images.length % 2 == 1 ? 6 : 7),
                    // childAspectRatio: 2.2
                  ),
                ),
              ),
              SizedBox(
                height: HYSizeFit.setRpx(10),
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: HYSizeFit.setRpx(12.26),
                      height: HYSizeFit.setRpx(10),
                      child: SvgPicture.string(
                        SVGUtil.svg_e9er82,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: HYSizeFit.setRpx(4),
                    ),
                    Text(
                      '234次',
                      style: TextStyle(
                        fontFamily: 'Source Han Sans CN',
                        fontSize: HYSizeFit.setRpx(14),
                        color: const Color(0xffb2b2b2),
                        letterSpacing: -0.336,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                    Expanded(
                      child: Container(),
                      flex: 1,
                    ),
                    Container(
                      width: HYSizeFit.setRpx(17.13),
                      height: HYSizeFit.setRpx(17.13),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.string(
                            SVGUtil.svg_n25xwa,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: HYSizeFit.setRpx(4),
                    ),
                    Text(
                      '234',
                      style: TextStyle(
                        fontFamily: 'Source Han Sans CN',
                        fontSize: HYSizeFit.setRpx(14),
                        color: const Color(0xffb2b2b2),
                        letterSpacing: -0.336,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                    SizedBox(
                      width: HYSizeFit.setRpx(20),
                    ),
                    Container(
                      width: HYSizeFit.setRpx(17.13),
                      height: HYSizeFit.setRpx(17.13),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.string(
                            SVGUtil.svg_haa93,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                          SvgPicture.string(
                            SVGUtil.svg_qoqa3,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: HYSizeFit.setRpx(4),
                    ),
                    Text(
                      '234',
                      style: TextStyle(
                        fontFamily: 'Source Han Sans CN',
                        fontSize: HYSizeFit.setRpx(14),
                        color: const Color(0xffb2b2b2),
                        letterSpacing: -0.336,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
