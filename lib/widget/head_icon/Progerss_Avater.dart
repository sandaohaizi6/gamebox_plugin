import 'package:flutter/material.dart';
import 'package:gamebox_plugin/res/light_dark_color.dart';
import 'package:gamebox_plugin/utils/screen_utils.dart';
import 'package:sp_util/sp_util.dart';

import '../../commons/global.dart';
import '../../res/str_constant.dart';

class Progerss_Avater extends StatefulWidget {
  String imgUrl;

  double width = 67;
  double height = 67;

  Progerss_Avater(
      {Key? key, required this.imgUrl, this.width = 67, this.height = 67})
      : super(key: key);

  @override
  State<Progerss_Avater> createState() => _Progerss_AvaterState();
}

class _Progerss_AvaterState extends State<Progerss_Avater>
    with SingleTickerProviderStateMixin {
  Animation<double>? _animation;
  AnimationController? _controller;

  @override
  void initState() {
    // TODO: implement initState  auto play animation
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller!)
      ..addListener(() {
        if (mounted && _controller != null) setState(() {});
      });

    _controller!.forward();

    super.initState();
  }

  @override
  void dispose() {
    _controller!.reverse();
    _controller!.dispose();
    super.dispose();
    // TODO: implement dispose
  }

  @override
  Widget build(BuildContext context) {
    HYSizeFit.initialize(context);
    return SizedBox(
      width: HYSizeFit.setRpx(widget.width),
      height: HYSizeFit.setRpx(widget.height),
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: _animation!.value,
            strokeWidth: SpUtil.getObject(USER_INFO) != null ? 2 : 0,
            valueColor: AlwaysStoppedAnimation(launchPageTopBtnTxBg()),
            backgroundColor: Colors.grey.withOpacity(0.2),
          ),
          Center(
              child: Stack(
            children: [
              CircleAvatar(
                  radius: 45.0,
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                  backgroundImage: AssetImage(Global.getImageResource(
                      SpUtil.getObject(USER_INFO) != null
                          ? "headPlaceLogined.png"
                          : "headPlaceholder.png"))),
              Visibility(
                  child: CircleAvatar(
                      radius: 45.0,
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                      backgroundImage: NetworkImage(widget.imgUrl)),
                  visible: widget.imgUrl != "")
            ],
          )),
        ],
      ),
    );
  }
}
