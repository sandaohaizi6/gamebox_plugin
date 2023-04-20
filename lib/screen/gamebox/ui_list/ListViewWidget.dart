import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

import '../../../utils/screen_utils.dart';
import '../../../widget/refresh/footer_custom_widget.dart';
import '../../../widget/refresh/header_custom_widget.dart';

class ListViewWidget extends StatefulWidget {
  dynamic itemUi;
  double height;
  double bottom;
  bool isUiHead; //是否有头部
  Footer? foot; //是否有底部
  dynamic uiHeadWidget; //头部 ui
  dynamic scrollDirection;

  ListViewWidget(
      {Key? key,
      required this.itemUi,
      this.height = 0,
      this.bottom = 0,
      this.isUiHead = false,
      this.uiHeadWidget,
      this.foot,
      this.scrollDirection = Axis.vertical})
      : super(key: key);

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height == 0
            ? HYSizeFit.screenHeight
            : HYSizeFit.setRpx(widget.height),
        width: HYSizeFit.screenWidth,
        // color: Colors.black,
        margin: EdgeInsets.only(
            top: HYSizeFit.setRpx(0), bottom: HYSizeFit.setRpx(widget.bottom)),
        child: EasyRefresh.custom(
          scrollDirection: widget.scrollDirection,
          header: HeaderCustomWidget(),
          footer: widget.foot ??
              FooterCustomWidget(
                  loadIndicatorExtents: HYSizeFit.setRpx(40),
                  // noMores: currentPage == pages ? true : false),
                  noMores: true),
          // footer: FooterCustomWidget(
          //     loadIndicatorExtents: HYSizeFit.setRpx(40),
          //     noMores: currentPage == pages ? true : false),
          emptyWidget:
              // context
              //     .watch<OrderItemNotifier>()
              //     .myOrderRechargeDataList
              //     .isEmpty
              //     ? SizedBox(
              //   height: HYSizeFit.screenHeight! -
              //       HYSizeFit.setRpx(88 + 17),
              //   child: Center(
              //     child: Column(
              //       mainAxisAlignment:
              //       MainAxisAlignment.center,
              //       children: [
              //         Image(
              //           image: AssetImage(
              //               Global.getImageResource(
              //                   "orderEmptyIcon.png")),
              //           width: HYSizeFit.setRpx(115),
              //           fit: BoxFit.fitWidth,
              //         ),
              //         Text(
              //           // S.of(context).you_do_not,
              //           "这里什么都没有哦~",
              //           style: TextStyle(
              //               color:
              //               launchPageBottomDesTxBg(),
              //               fontWeight: FontWeight.bold,
              //               fontSize: HYSizeFit.setRpx(13)),
              //           textAlign: TextAlign.center,
              //         ),
              //         SizedBox(
              //           height: HYSizeFit.setRpx(0),
              //         ),
              //         // InkWell(
              //         //   onTap: () {},
              //         //   splashColor: Colors.transparent,
              //         //   highlightColor: Colors.transparent,
              //         //   child: Container(
              //         //     width: HYSizeFit.setRpx(125),
              //         //     height: HYSizeFit.setRpx(33),
              //         //     child: Text(
              //         //       S.of(context).recharge,
              //         //       style: TextStyle(
              //         //         color: launchPageTopBtnTxBg(),
              //         //       ),
              //         //     ),
              //         //     decoration: BoxDecoration(
              //         //         color: launchPageTopBtnBg(),
              //         //         borderRadius:
              //         //             BorderRadius.all(
              //         //                 Radius.circular(
              //         //                     HYSizeFit.setRpx(
              //         //                         20)))),
              //         //     alignment:
              //         //         AlignmentDirectional.center,
              //         //   ),
              //         // )
              //       ],
              //     ),
              //   ),
              // )
              //     :
              null,
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Wrap(
                    children: [
                      Stack(children: [
                        ///TODO:白色背景
                        InkWell(
                          onTap: () {
                            //todo 跳转答题选项回顾卡
                            // isToHistoryToPosition = index;
                            print(
                                "isToHistoryToPosition==========$index======");
                            // Navigator.push(
                            //     navigatorKey
                            //         .currentState!.overlay!.context,
                            //     MaterialPageRoute(
                            //       builder: (context) =>
                            //           QuestionHistoryPage(
                            //         multiSelectList:
                            //             quetsionModels!.toSet().toList(),
                            //         position: index,
                            //         score: null,
                            //       ),
                            //     ));
                          },
                          child: Stack(
                            children: widget.isUiHead && index == 0
                                ? [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        widget?.uiHeadWidget,
                                        widget.itemUi(index),
                                      ],
                                    )
                                  ]
                                : [
                                    widget.itemUi(index)

                                    // WalletOrderItem(
                                    //   myOrderItem: Provider.of<
                                    //       OrderItemNotifier>(
                                    //       context,
                                    //       listen: false)
                                    //       .myOrderRechargeDataList[index],
                                    // )
                                  ],
                          ),
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                        ),
                      ])
                    ],
                  );
                },

                childCount:
                    // context
                    //     .watch<OrderItemNotifier>()
                    //     .myOrderRechargeDataList
                    //     .length
                    10,
              ),
            ),
          ],
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 2), () {
              // currentPage = 1;
              // startLoading(true, duration: 1000);
              //
              // DBUtils.getInstance()
              //     .clearDbForZxOrderRecharge()
              //     .then((value) => getAllData(context));
            });
          },
          onLoad: () async {
            await Future.delayed(const Duration(seconds: 2), () {
              // if (currentPage >= pages) {
              //   currentPage = pages;
              // } else {
              //   currentPage++;
              // }
              // getAllData(context);
            });
          },
        ));
  }
}
