import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gamebox_plugin/utils/screen_utils.dart';

import '../../../utils/image/ImageAssets.dart';
import '../util/multi_text.dart';
import '../util/svg/SVGUtil.dart';

//section search page search result
/*
*                           _                                                          _                            _ _
*   ___  ___  __ _ _ __ ___| |__     _ __   __ _  __ _  ___    ___  ___  __ _ _ __ ___| |__     _ __ ___  ___ _   _| | |_
*  / __|/ _ \/ _` | '__/ __| '_ \   | '_ \ / _` |/ _` |/ _ \  / __|/ _ \/ _` | '__/ __| '_ \   | '__/ _ \/ __| | | | | __|
*  \__ \  __/ (_| | | | (__| | | |  | |_) | (_| | (_| |  __/  \__ \  __/ (_| | | | (__| | | |  | | |  __/\__ \ |_| | | |_
*  |___/\___|\__,_|_|  \___|_| |_|  | .__/ \__,_|\__, |\___|  |___/\___|\__,_|_|  \___|_| |_|  |_|  \___||___/\__,_|_|\__|
*                                   |_|          |___/
*/
class SearchPageItemSearchResult extends StatefulWidget {
  int index = 0;

  double left;
  double right;

  SearchPageItemSearchResult(
      {Key? key, this.index = 0, this.left = 16, this.right = 16})
      : super(key: key);

  @override
  State<SearchPageItemSearchResult> createState() =>
      _SearchPageItemSearchResultState();
}

class _SearchPageItemSearchResultState
    extends State<SearchPageItemSearchResult> {
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
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(14.0),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000).withOpacity(0.05),
                  offset: const Offset(0, 3),
                  blurRadius: 18,
                ),
              ],
            ),
            margin: EdgeInsets.only(
              left: HYSizeFit.setRpx(widget.left),
              right: HYSizeFit.setRpx(widget.right),
              bottom: HYSizeFit.setRpx(7),
            ),
            padding: EdgeInsets.only(
              bottom: HYSizeFit.setRpx(7),
              left: HYSizeFit.setRpx(9),
              right: HYSizeFit.setRpx(10),
              top: HYSizeFit.setRpx(7),
            ),
            child: Row(
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: HYSizeFit.setRpx(64),
                      height: HYSizeFit.setRpx(64),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage(''),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      width: HYSizeFit.setRpx(64),
                      height: HYSizeFit.setRpx(64),
                      decoration: BoxDecoration(
                        color: const Color(0xffA6C7EA),
                        borderRadius: BorderRadius.circular(14.0),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: const Color(0x29000000),
                        //     offset: Offset(0, 3),
                        //     blurRadius: 18,
                        //   ),
                        // ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: HYSizeFit.setRpx(11),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        MultiTextWidget(
                          width: 100,
                          textStyle: TextStyle(
                            fontFamily: 'Source Han Sans CN',
                            fontSize: HYSizeFit.setRpx(16),
                            color: const Color(0xff2b2b2b),
                            letterSpacing: -0.192,
                            fontWeight: FontWeight.w500,
                          ),
                          title: "爱仕达us发哦",
                          maxLines: 2,
                        ),
                        Container(
                          height: HYSizeFit.setRpx(26),
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: HYSizeFit.setRpx(8)),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                margin:
                                    EdgeInsets.only(left: HYSizeFit.setRpx(8)),
                                height: HYSizeFit.setRpx(16),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment(-1.363, 0.348),
                                    end: Alignment(1.152, 0.191),
                                    colors: [
                                      const Color(0xffffd080),
                                      const Color(0xffe7602f)
                                    ],
                                    stops: [0.0, 1.0],
                                  ),
                                  borderRadius: BorderRadius.circular(164.0),
                                ),
                                padding: EdgeInsets.only(
                                    left: HYSizeFit.setRpx(18),
                                    right: HYSizeFit.setRpx(6)),
                                child: Text(
                                  '行星',
                                  style: TextStyle(
                                    fontFamily: 'Source Han Sans CN',
                                    fontSize: 10,
                                    color: const Color(0xffffffff),
                                    letterSpacing: -0.24,
                                  ),
                                  textAlign: TextAlign.center,
                                  softWrap: false,
                                ),
                              ),
                              SizedBox(
                                width: HYSizeFit.setRpx(26),
                                height: HYSizeFit.setRpx(26),
                                child: setImage("gamebox_king",
                                    width: HYSizeFit.setRpx(26),
                                    height: HYSizeFit.setRpx(26)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: HYSizeFit.setRpx(0),
                    ),
                    Text(
                      '离线',
                      style: TextStyle(
                        fontFamily: 'Source Han Sans CN',
                        fontSize: HYSizeFit.setRpx(8),
                        color: const Color(0xffababab),
                        letterSpacing: -0.096,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                    SizedBox(
                      height: HYSizeFit.setRpx(5),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'ID:2353633',
                          style: TextStyle(
                            fontFamily: 'Source Han Sans CN',
                            fontSize: HYSizeFit.setRpx(10),
                            color: const Color(0xff959090),
                            letterSpacing: -0.336,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(
                          width: HYSizeFit.setRpx(8),
                        ),
                        SizedBox(
                          width: 1.0,
                          height: 14.0,
                          child: SvgPicture.string(
                            SVGUtil.svg_gxury6,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                        SizedBox(
                          width: HYSizeFit.setRpx(8),
                        ),
                        SizedBox(
                          child: Text(
                            '粉丝:765',
                            style: TextStyle(
                              fontFamily: 'Source Han Sans CN',
                              fontSize: HYSizeFit.setRpx(10),
                              color: const Color(0xff959090),
                              letterSpacing: -0.336,
                            ),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                        ),
                        SizedBox(
                          width: HYSizeFit.setRpx(8),
                        ),
                        SizedBox(
                          width: 1.0,
                          height: 14.0,
                          child: SvgPicture.string(
                            SVGUtil.svg_gxury6,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                        SizedBox(
                          width: HYSizeFit.setRpx(8),
                        ),
                        SizedBox(
                          width: 1.0,
                          height: 14.0,
                          child: SvgPicture.string(
                            SVGUtil.svg_rbb0u,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                        SizedBox(
                          width: HYSizeFit.setRpx(9.55),
                          height: HYSizeFit.setRpx(9.75),
                          child: SvgPicture.string(
                            SVGUtil.svg_rbb0u,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                        SizedBox(
                          width: HYSizeFit.setRpx(4),
                        ),
                        Text(
                          '22',
                          style: TextStyle(
                            fontFamily: 'Source Han Sans CN',
                            fontSize: HYSizeFit.setRpx(10),
                            color: const Color(0xfffea5c5),
                            letterSpacing: -0.336,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        )
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Container(),
                  flex: 1,
                ),
                // SvgPicture.string(
                //   _svg_o0u87z,
                //   allowDrawingOutsideViewBox: true,
                //   fit: BoxFit.fill,
                // ),
                Container(
                    padding: EdgeInsets.only(
                        left: HYSizeFit.setRpx(14),
                        right: HYSizeFit.setRpx(14),
                        top: HYSizeFit.setRpx(5),
                        bottom: HYSizeFit.setRpx(5)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(39.0),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffff80ad)),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: const Color(0x26313131),
                      //     offset: Offset(0, 3),
                      //     blurRadius: 6,
                      //   ),
                      // ],
                    ),
                    child: Text(
                      '去私聊',
                      style: TextStyle(
                        fontFamily: 'Source Han Sans CN',
                        fontSize: HYSizeFit.setRpx(14),
                        color: const Color(0xffff80ad),
                        letterSpacing: -0.336,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
