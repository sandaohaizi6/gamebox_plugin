import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/screen_utils.dart';

//section Player Detail Banner
/*
*   ____  _                          ____       _        _ _    ____
*  |  _ \| | __ _ _   _  ___ _ __   |  _ \  ___| |_ __ _(_) |  | __ )  __ _ _ __  _ __   ___ _ __
*  | |_) | |/ _` | | | |/ _ \ '__|  | | | |/ _ \ __/ _` | | |  |  _ \ / _` | '_ \| '_ \ / _ \ '__|
*  |  __/| | (_| | |_| |  __/ |     | |_| |  __/ || (_| | | |  | |_) | (_| | | | | | | |  __/ |
*  |_|   |_|\__,_|\__, |\___|_|     |____/ \___|\__\__,_|_|_|  |____/ \__,_|_| |_|_| |_|\___|_|
*                 |___/
*/
class DetailBanner extends StatefulWidget {
  List images = [];

  DetailBanner({Key? key, required this.images}) : super(key: key);

  @override
  State<DetailBanner> createState() => _DetailBannerState();
}

class _DetailBannerState extends State<DetailBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Swiper(
        autoplay: true,
        // reverse: false,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: <Widget>[
              Container(
                width: HYSizeFit.screenWidth,
                height: HYSizeFit.setRpx(266),
                decoration: BoxDecoration(
                  color: index % 4 == 0
                      ? Colors.yellow
                      : index % 4 == 1
                          ? Colors.red
                          : index % 4 == 2
                              ? Colors.green
                              : Colors.blue,
                  borderRadius: BorderRadius.circular(0.0),
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
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
              ),
            ],
          );
        },
        itemCount: widget.images.length,
        layout: SwiperLayout.DEFAULT,
        curve: Curves.easeInCubic,
        loop: true,

        physics: BouncingScrollPhysics(),
        // itemWidth: MediaQuery.of(context).size.width * 0.7,
        // itemWidth: 26 * 4,
        // itemHeight: 26,
        pagination: SwiperPagination(
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(
                bottom: HYSizeFit.setRpx(GetPlatform.isAndroid ? 65 : 45),
                right: HYSizeFit.setRpx(10)),
            builder: DotSwiperPaginationBuilder(
                color: Colors.black54,
                activeColor: Colors.white,
                size: 6.0,
                activeSize: 6.0)),
        control: null,
        autoplayDelay: 5000,
        duration: 2000,
      ),
      height: HYSizeFit.setRpx(266),
    );
  }
}
