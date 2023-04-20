import 'package:flutter/cupertino.dart';

import '../../commons/global.dart';
import '../screen_utils.dart';

//section set Image
/*
*            _      ___
*   ___  ___| |_   |_ _|_ __ ___   __ _  __ _  ___
*  / __|/ _ \ __|   | || '_ ` _ \ / _` |/ _` |/ _ \
*  \__ \  __/ |_    | || | | | | | (_| | (_| |  __/
*  |___/\___|\__|  |___|_| |_| |_|\__,_|\__, |\___|
*                                       |___/
*/
Widget setImage(String url, {double width = 0, double height = 0}) {
  if (width == -1) {
    width = HYSizeFit.screenWidth!;
    return Image.asset(Global.getImageResource(url + ".png"),
        width: width, fit: BoxFit.fill);
  } else {
    width = HYSizeFit.setRpx(width);
    return Image.asset(
      Global.getImageResource(url + ".png"),
      width: width,
      height: HYSizeFit.setRpx(height),
      fit: BoxFit.fill,
    );
  }
}
