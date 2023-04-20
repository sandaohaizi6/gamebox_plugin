import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gamebox_plugin/res/colors.dart';
import 'package:gamebox_plugin/screen/gamebox/search_page/ui_hot_room/HotRoomWidget.dart';
import 'package:gamebox_plugin/utils/screen_utils.dart';

import '../../../widget/refresh/footer_custom_widget.dart';
import '../home/SearchBoxBar.dart';
import '../item/SearchPageItemSearchResult.dart';
import '../ui_list/ListViewWidget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin {
  CustomLayoutOption? customLayoutOption;
  final List<String> images = [
    'https://via.placeholder.com/350x150',
    'https://via.placeholder.com/350x150',
    'https://via.placeholder.com/350x150',
    'https://via.placeholder.com/350x150',
  ];

  @override
  void initState() {
    super.initState();
    customLayoutOption = CustomLayoutOption(
      startIndex: -1,
      stateCount: images.length - 1,
    );
    customLayoutOption?.addRotate([-0 / 180, 0.0, 0 / 180]);
    customLayoutOption?.addTranslate([
      Offset(-328.0, 0.0),
      Offset(0.0, 0.0),
      Offset(328.0, 0.0),
    ]);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: MyContents(images: images, customLayoutOption: customLayoutOption),
    );
  }
}

class MyContents extends HookConsumerWidget {
  List<String> images;
  CustomLayoutOption? customLayoutOption;

  MyContents({Key? key, required this.images, required this.customLayoutOption})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //TODO:搜索结果
    final searchResult = useState<String>("");

    Fluttertoast.showToast(msg: searchResult.value);
    // TODO: implement build
    return Container(
      color:
          searchResult.value.isEmpty ? Colors.white : const Color(0xffF8F8F8),
      child: Stack(
        children: [
          Visibility(
            visible: searchResult.value.isEmpty,
            child: Container(
              child: Text(
                '热门房间',
                style: TextStyle(
                  fontFamily: 'Source Han Sans CN',
                  fontSize: 16,
                  color: const Color(0xff2b2b2b),
                  letterSpacing: -0.192,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
              margin: EdgeInsets.only(
                  left: HYSizeFit.setRpx(20), top: HYSizeFit.setRpx(107)),
            ),
          ),
          //TODO:热门房间
          Visibility(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Container(
                    child: Swiper(
                      autoplay: false,
                      // reverse: false,
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          children: <Widget>[
                            index % 2 == 0
                                ? HotRoomWidget(
                                    title: '声音交友',
                                    colors: const [
                                      Color(0xffd1fdff),
                                      Color(0x96ecfbff),
                                      Color(0xffffffff)
                                    ],
                                  )
                                : HotRoomWidget(
                                    title: '电台',
                                    colors: const [
                                      Color(0xffffd8e6),
                                      Color(0x96ecfbff),
                                      Color(0xffffffff)
                                    ],
                                  ),
                          ],
                        );
                      },
                      itemCount: images.length,
                      layout: SwiperLayout.CUSTOM,
                      customLayoutOption: customLayoutOption,
                      // curve: Curves.easeInCubic,
                      // allowImplicitScrolling: true,
                      // autoplayDisableOnInteraction: true,
                      loop: false,
                      // plugins: [SwiperPagination.fraction],
                      physics: BouncingScrollPhysics(),
                      // itemWidth: MediaQuery.of(context).size.width * 0.7,
                      itemWidth: HYSizeFit.setRpx(300) * (images.length - 1),
                      itemHeight: HYSizeFit.screenHeight,
                      pagination: null,
                      control: null,
                      // autoplayDelay: 2000,
                      // duration: 2000,
                      // 设置为水平滚动，默认值
                    ),
                    margin: EdgeInsets.only(left: HYSizeFit.setRpx(6)),
                  ))
                ],
              ),
            ),
            visible: searchResult.value.isEmpty,
          ),
          //TODO:搜索结果
          Visibility(
            child: Container(
              width: HYSizeFit.screenWidth,
              margin: EdgeInsets.only(top: HYSizeFit.setRpx(97)),
              child: ListViewWidget(
                bottom: 20,
                isUiHead: false,
                foot: FooterCustomWidget(
                    widthLine: 70,
                    loadIndicatorExtents: HYSizeFit.setRpx(20),
                    // noMores: currentPage == pages ? true : false),
                    noMores: true),
                uiHeadWidget: Container(),
                itemUi: (index) {
                  return SearchPageItemSearchResult(
                    index: index,
                  );
                },
                scrollDirection: Axis.vertical,
              ),
            ),
            visible: searchResult.value.isNotEmpty,
          ),
          //TODO: 顶部搜索框
          SearchBoxBar(
            hintTextColor: string2Color("#939393"),
            gameboxSign: () {
              Fluttertoast.showToast(msg: "取消");
              Navigator.pop(context);
            },
            backgroundColor: string2Color("#B2B2B2").withOpacity(0.18),
            btn: const Text(
              '取消',
              style: TextStyle(
                fontFamily: 'Source Han Sans CN',
                fontSize: 16,
                color: Color(0xff474546),
                letterSpacing: -0.192,
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
            btnTop: 58,
            onSearchClear: () {
              searchResult.value = "";
            },
            onEditingProgress: (value) {
              searchResult.value = value;
            },
            onSubmitted: (value) {
              // Fluttertoast.showToast(msg: value);
              searchResult.value = value;
            },
          ),
        ],
      ),
    );
  }
}
