import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/screen_utils.dart';
import '../../util/svg/SVGUtil.dart';

//section User Head icon online care
/*
*   _   _                  _   _                _    _                                _ _
*  | | | |___  ___ _ __   | | | | ___  __ _  __| |  (_) ___ ___  _ __      ___  _ __ | (_)_ __   ___     ___ __ _ _ __
*  | | | / __|/ _ \ '__|  | |_| |/ _ \/ _` |/ _` |  | |/ __/ _ \| '_ \    / _ \| '_ \| | | '_ \ / _ \   / __/ _` | '__|
*  | |_| \__ \  __/ |     |  _  |  __/ (_| | (_| |  | | (_| (_) | | | |  | (_) | | | | | | | | |  __/  | (_| (_| | |
*   \___/|___/\___|_|     |_| |_|\___|\__,_|\__,_|  |_|\___\___/|_| |_|   \___/|_| |_|_|_|_| |_|\___|   \___\__,_|_|
*
*/
class HeadiconOnlineCare extends StatefulWidget {
  const HeadiconOnlineCare({Key? key}) : super(key: key);

  @override
  State<HeadiconOnlineCare> createState() => _HeadiconOnlineCareState();
}

class _HeadiconOnlineCareState extends State<HeadiconOnlineCare> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: HYSizeFit.setRpx(100),
          height: HYSizeFit.setRpx(100),
          margin: EdgeInsets.only(left: HYSizeFit.setRpx(16)),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(HYSizeFit.setRpx(50))),
          child: Center(
              child: Container(
            width: HYSizeFit.setRpx(84),
            height: HYSizeFit.setRpx(84),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(HYSizeFit.setRpx(50))),
          )),
        ),
        //TODO:是否在线
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            child: SizedBox(
              width: HYSizeFit.setRpx(15),
              height: HYSizeFit.setRpx(15),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff5effc4),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    ),
                    margin: EdgeInsets.all(2.0),
                  ),
                ],
              ),
            ),
            margin: EdgeInsets.only(
                top: HYSizeFit.setRpx(75), left: HYSizeFit.setRpx(90)),
          ),
        ),
        //TODO:心仪她
        Positioned(
          child: Container(
            padding: EdgeInsets.only(
                top: HYSizeFit.setRpx(8),
                bottom: HYSizeFit.setRpx(8),
                left: HYSizeFit.setRpx(11),
                right: HYSizeFit.setRpx(13)),
            decoration: BoxDecoration(
              color: const Color(0xffffe6ef),
              borderRadius: BorderRadius.circular(117.0),
            ),
            child: Row(
              children: [
                SvgPicture.string(
                  SVGUtil.svg_jrq4lb,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  width: HYSizeFit.setRpx(4),
                ),
                Text(
                  '心仪她',
                  style: TextStyle(
                    fontFamily: 'Source Han Sans CN',
                    fontSize: 15,
                    color: const Color(0xffff80ad),
                    letterSpacing: -0.36,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
              ],
            ),
          ),
          top: HYSizeFit.setRpx(53),
          right: HYSizeFit.setRpx(31),
        ),
      ],
    );
  }
}
