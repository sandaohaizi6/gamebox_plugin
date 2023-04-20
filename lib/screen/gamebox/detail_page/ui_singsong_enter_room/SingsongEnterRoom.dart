import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/screen_utils.dart';
import '../../util/svg/SVGUtil.dart';

class SingsongEnterRoom extends StatefulWidget {
  const SingsongEnterRoom({Key? key}) : super(key: key);

  @override
  State<SingsongEnterRoom> createState() => _SingsongEnterRoomState();
}

class _SingsongEnterRoomState extends State<SingsongEnterRoom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: HYSizeFit.screenWidth,
      margin: EdgeInsets.only(
          top: HYSizeFit.setRpx(20), bottom: HYSizeFit.setRpx(10)),
      child: Container(
          padding: EdgeInsets.all(HYSizeFit.setRpx(12)),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment(1.036, 0.142),
              end: Alignment(-1.363, 0.318),
              colors: [Color(0xffffffd8), Color(0xffb8edde), Color(0xff7cd3ff)],
              stops: [0.0, 0.714, 1.0],
            ),
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: Row(children: [
            //TODO:头像
            SizedBox(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: HYSizeFit.setRpx(40),
                    height: HYSizeFit.setRpx(40),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: HYSizeFit.setRpx(40),
                    height: HYSizeFit.setRpx(40),
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                          width: 1.0,
                          color: const Color(0xff707070).withOpacity(0.2)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: HYSizeFit.setRpx(13),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: HYSizeFit.setRpx(18),
                      height: HYSizeFit.setRpx(16),
                      child: SvgPicture.string(
                        SVGUtil.svg_co4a3,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                    SizedBox(
                      width: HYSizeFit.setRpx(6),
                    ),
                    Text(
                      '当前正在：点唱',
                      style: TextStyle(
                        fontFamily: 'Source Han Sans CN',
                        fontSize: 14,
                        color: const Color(0xff444242),
                        letterSpacing: -0.336,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    )
                  ],
                ),
                SizedBox(
                  height: HYSizeFit.setRpx(5),
                ),
                Text(
                  '歌曲：最好的都给你     ',
                  style: TextStyle(
                    fontFamily: 'Source Han Sans CN',
                    fontSize: 10,
                    color: const Color(0xff444242),
                    letterSpacing: -0.24,
                  ),
                  textAlign: TextAlign.left,
                  softWrap: false,
                )
              ],
            ),
            Expanded(
              child: Container(),
              flex: 1,
            ),
            Container(
                height: HYSizeFit.setRpx(22),
                width: HYSizeFit.setRpx(68),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xffa5c6fe),
                  borderRadius: BorderRadius.circular(72.0),
                ),
                child: Text(
                  '进入房间',
                  style: TextStyle(
                    fontFamily: 'Source Han Sans CN',
                    fontSize: 12,
                    color: const Color(0xffffffff),
                    letterSpacing: -0.28800000000000003,
                  ),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ))
          ])),
    );
  }
}
