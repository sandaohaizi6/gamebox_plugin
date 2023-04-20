import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/image/ImageAssets.dart';
import '../../../../utils/screen_utils.dart';
import '../../util/svg/SVGUtil.dart';

class NameIdLevelFansAge extends StatefulWidget {
  const NameIdLevelFansAge({Key? key}) : super(key: key);

  @override
  State<NameIdLevelFansAge> createState() => _NameIdLevelFansAgeState();
}

class _NameIdLevelFansAgeState extends State<NameIdLevelFansAge> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //TODO:用户名字
        Row(
          children: [
            Text(
              '爱仕达us发哦',
              style: TextStyle(
                fontFamily: 'Source Han Sans CN',
                fontSize: 16,
                color: const Color(0xff383838),
                letterSpacing: -0.384,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
              softWrap: false,
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
                    margin: EdgeInsets.only(left: HYSizeFit.setRpx(8)),
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
                        left: HYSizeFit.setRpx(18), right: HYSizeFit.setRpx(6)),
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
          height: HYSizeFit.setRpx(8),
        ),
        //

        Row(
          children: [
            Text(
              'ID:2353633',
              style: TextStyle(
                fontFamily: 'Source Han Sans CN',
                fontSize: HYSizeFit.setRpx(14),
                color: const Color(0xff959090),
                letterSpacing: -0.336,
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
            SizedBox(
              width: HYSizeFit.setRpx(7),
            ),
            SizedBox(
              width: HYSizeFit.setRpx(9.46),
              height: HYSizeFit.setRpx(11.04),
              child: SvgPicture.string(
                SVGUtil.svg_z3357x,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: HYSizeFit.setRpx(10),
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
              width: HYSizeFit.setRpx(10),
            ),
            SizedBox(
              height: HYSizeFit.setRpx(20),
              child: Text(
                '粉丝:765',
                style: TextStyle(
                  fontFamily: 'Source Han Sans CN',
                  fontSize: HYSizeFit.setRpx(14),
                  color: const Color(0xff959090),
                  letterSpacing: -0.336,
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ),
            SizedBox(
              width: HYSizeFit.setRpx(10),
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
              width: HYSizeFit.setRpx(10),
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
              width: HYSizeFit.setRpx(11.77),
              height: HYSizeFit.setRpx(12.01),
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
                fontSize: 14,
                color: const Color(0xfffea5c5),
                letterSpacing: -0.336,
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            )
          ],
        ),
      ],
    );
  }
}
