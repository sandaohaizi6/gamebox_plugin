import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gamebox_plugin/screen/gamebox/widget/InkWellCustom.dart';

import '../../../res/colors.dart';
import '../../../res/light_dark_color.dart';
import '../../../utils/image/ImageAssets.dart';
import '../../../utils/screen_utils.dart';
import '../../../widget/search_widget/advanced_search_new.dart';

class SearchBoxBar extends StatefulWidget {
  dynamic gameboxSign;
  dynamic? edtBtn;

  Color? backgroundColor;
  Color? hintTextColor;
  Widget? btn;
  double? btnTop;
  bool enabled;
  dynamic onSubmitted;
  dynamic onEditingProgress;
  dynamic onSearchClear;

  SearchBoxBar(
      {Key? key,
      this.gameboxSign,
      this.backgroundColor,
      this.edtBtn,
      this.btn,
      this.btnTop,
      this.hintTextColor,
      this.onSubmitted,
      this.onEditingProgress,
      this.onSearchClear,
      this.enabled = true})
      : super(key: key);

  @override
  _SearchBoxBarState createState() => _SearchBoxBarState();
}

class _SearchBoxBarState extends State<SearchBoxBar> {
  var newFileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWellCustom(
          child: Container(
            alignment: Alignment.topCenter,
            // color: Colors.transparent,
            height: HYSizeFit.setRpx(36),
            margin: EdgeInsets.only(
                top: HYSizeFit.setRpx(52),
                left: HYSizeFit.setRpx(16),
                right: HYSizeFit.setRpx(61)),
            decoration: BoxDecoration(
              color: widget.backgroundColor ?? Colors.white,
              borderRadius: BorderRadius.circular(HYSizeFit.setRpx(30)),
            ),
            child: AdvancedSearchNew(
              textEditingController: newFileController,
              rightImg: "placeholderIcon.png",
              leftImg: "gamebox_search.png",
              data: const [],
              maxElementsToDisplay: 1,
              singleItemHeight: HYSizeFit.setRpx(0),
              borderColor: Colors.transparent,
              minLettersForSearch: 0,
              selectedTextColor: const Color(0xFF3363D9),
              fontSize: HYSizeFit.setRpx(12),
              borderRadius: HYSizeFit.setRpx(30),
              // hintText: S.current.please_input_file_name,
              hintText: "主播ID、聊天室名称、主播名称",
              cursorColor: discoverReplaceDeviceTxSelBg(),
              autoCorrect: false,
              focusedBorderColor: Colors.transparent,
              searchResultsBgColor: Colors.transparent,
              disabledBorderColor: Colors.transparent,
              enabledBorderColor: Colors.transparent,
              enabled: widget.enabled,
              caseSensitive: false,
              //TODO:黑暗模式
              // inputTextFieldBgColor: discoverRootPageItemStrokeBg(),
              inputTextFieldBgColor: Colors.transparent,
              clearSearchEnabled: true,
              itemsShownAtStart: 10,
              searchMode: SearchModeNew.CONTAINS,
              showListOfResults: true,
              unSelectedTextColor: Colors.black54,
              verticalPadding:
                  HYSizeFit.setRpx(GetPlatform.isAndroid ? -14 : -12),
              horizontalPadding: HYSizeFit.setRpx(33),
              hideHintOnTextInputFocus: true,
              hintTextColor: widget.hintTextColor ?? string2Color("#D2D2D2"),
              onItemTap: (index, value) {
                // Fluttertoast.showToast(msg: "onItemTap");
              },
              onSearchClear: () {
                widget.onSearchClear();

                // Fluttertoast.showToast(msg: "onSearchClear");
              },
              onSubmitted: (value, value2) {
                // Fluttertoast.showToast(msg: "onSubmitted");
                widget.onSubmitted(value);
              },
              rightCallback: () {
                // Fluttertoast.showToast(msg: "rightCallback");
              },
              onEditingProgress: (value, value2) {
                widget.onEditingProgress(value);

                // Fluttertoast.showToast(msg: "onEditingProgress");

                // if (value != "") {
                //   fileName = value;
                // } else {
                //   fileName = newFileController.text;
                // }
                // print("phoneNumber $phoneNumber");
                // Provider.of<LaunchNotifier>(context,
                //     listen: false)
                //     .phoneNumber = phoneNumber;
              },
            ),
          ),
          onTap: widget.edtBtn ?? () {},
        ),
        Positioned(
          child: InkWellCustom(
              child:
                  widget.btn ?? setImage("gamebox_sign", width: 39, height: 39),
              onTap: widget.gameboxSign),
          right: HYSizeFit.setRpx(18),
          top: HYSizeFit.setRpx(widget.btnTop ?? 47),
        )
      ],
    );
  }
}
