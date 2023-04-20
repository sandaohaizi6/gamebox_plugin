import 'package:flutter/cupertino.dart';

import '../../../../utils/screen_utils.dart';

class TalkFocus extends StatefulWidget {
  const TalkFocus({Key? key}) : super(key: key);

  @override
  State<TalkFocus> createState() => _TalkFocusState();
}

class _TalkFocusState extends State<TalkFocus> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
              bottom: HYSizeFit.setRpx(20),
              left: HYSizeFit.setRpx(16),
              right: HYSizeFit.setRpx(16)),
          child: Row(children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: HYSizeFit.setRpx(36),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(-1.171, -0.383),
                    end: Alignment(1.125, 0.0),
                    colors: [Color(0xffffb8e3), Color(0xffdb93ff)],
                    stops: [0.0, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(39.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x26313131),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Text(
                  '聊一聊',
                  style: TextStyle(
                    fontFamily: 'Source Han Sans CN',
                    fontSize: HYSizeFit.setRpx(16),
                    color: const Color(0xffffffff),
                    letterSpacing: -0.384,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
              ),
            ),
            SizedBox(width: HYSizeFit.setRpx(13)),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: HYSizeFit.setRpx(36),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(-1.084, 0.426),
                    end: Alignment(1.219, 0.706),
                    colors: [Color(0xffffcddf), Color(0xffff80ad)],
                    stops: [0.0, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(39.0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x26313131),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Text(
                  '关注',
                  style: TextStyle(
                    fontFamily: 'Source Han Sans CN',
                    fontSize: 16,
                    color: const Color(0xffffffff),
                    letterSpacing: -0.384,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
              ),
            ),
          ]),
        ));
  }
}
