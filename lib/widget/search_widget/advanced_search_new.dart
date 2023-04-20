library advanced_search;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../commons/global.dart';
import '../../res/light_dark_color.dart';
import '../../utils/screen_utils.dart';
import 'CustomRoundedRectangleBorder.dart';

typedef OnTap = void Function(int index, String value);
typedef SubmitResults = void Function(
    String searchText, List<String> searchResults);

///Class for adding AutoSearchInput to your project
class AdvancedSearchNew extends StatefulWidget {
  ///List of data that can be searched through for the results
  final List<String> data;

  ///The max number of elements to be displayed when the TextField is clicked
  final int maxElementsToDisplay;

  ///The color of text which actually appears in the results for which the text
  ///is typed
  final Color? selectedTextColor;

  ///The color of text which actually appears in the results for the
  ///remaining text
  final Color? unSelectedTextColor;

  ///Color of the border when the TextField is enabled
  final Color? enabledBorderColor;

  ///Color of the border when the TextField is disabled
  final Color? disabledBorderColor;

  ///Color of the border when the TextField is being integrated with
  final Color? focusedBorderColor;

  ///Color of the cursor
  final Color? cursorColor;

  ///Border Radius of the TextField and the resultant elements
  final double borderRadius;

  ///Font Size for both the text in the TextField and the results
  final double fontSize;

  ///Height of a single item in the resultant list
  final double singleItemHeight;

  ///Number of items to be shown when the TextField is tapped
  final int itemsShownAtStart;

  ///Hint text to show inside the TextField
  final String hintText;

  ///Boolean to set autoCorrect
  final bool autoCorrect;
  final TextInputType textInputType;
  int inputFormatters;
  final bool showPas;
  TextInputAction textInputAction;

  ///Boolean to set whether the TextField is enabled
  final bool enabled;

  ///onSubmitted function
  final SubmitResults? onSubmitted;

  ///Function to call when a certain item is clicked
  /// Takes in a parameter of the item which was clicked
  final OnTap onItemTap;

  /// Callback to be called when the user clears his search
  final Function onSearchClear;

  /// Function to be called on editing the text field
  final SubmitResults? onEditingProgress;

  /// Text Inout Background Color
  final Color? inputTextFieldBgColor;

  ///List Background Color
  final Color searchResultsBgColor;

  final SearchModeNew searchMode;

  final bool caseSensitive;

  final int minLettersForSearch;

  final Color borderColor;

  final Color hintTextColor;

  final bool clearSearchEnabled;

  final bool showListOfResults;

  final bool hideHintOnTextInputFocus;

  final double verticalPadding;

  final double horizontalPadding;
  final String rightImg;
  final String leftImg;
  final dynamic rightCallback;
  bool isShowRightClick = true;

  TextEditingController textEditingController = TextEditingController();

  AdvancedSearchNew({
    required this.data,
    required this.maxElementsToDisplay,
    required this.onItemTap,
    required this.onSearchClear,
    required this.textEditingController,
    this.selectedTextColor,
    this.isShowRightClick = true,
    this.unSelectedTextColor,
    this.enabledBorderColor,
    this.disabledBorderColor,
    this.focusedBorderColor,
    this.leftImg = "showPas.png",
    this.rightImg = "showPas.png",
    this.rightCallback,
    this.cursorColor,
    this.borderRadius = 10.0,
    this.fontSize = 14.0,
    this.singleItemHeight = 45.0,
    this.itemsShownAtStart = 10,
    this.hintText = 'Enter a name',
    this.autoCorrect = false,
    this.textInputType = TextInputType.multiline,
    this.inputFormatters = 45,
    this.showPas = false,
    this.enabled = true,
    this.textInputAction = TextInputAction.search,
    this.onSubmitted,
    this.onEditingProgress,
    this.inputTextFieldBgColor,
    this.searchResultsBgColor = Colors.white,
    this.searchMode = SearchModeNew.CONTAINS,
    this.caseSensitive = false,
    this.minLettersForSearch = 0,
    this.borderColor = const Color(0xFFFAFAFA),
    this.hintTextColor = Colors.grey,
    this.clearSearchEnabled = true,
    this.showListOfResults = true,
    this.hideHintOnTextInputFocus = false,
    this.verticalPadding = 10,
    this.horizontalPadding = 10,
  });

  @override
  _AdvancedSearchNewState createState() => _AdvancedSearchNewState();
}

class _AdvancedSearchNewState extends State<AdvancedSearchNew> {
  List<String> results = [];
  bool isItemClicked = false;
  String lastSubmittedText = "";
  String? hintText;

  // final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    widget.textEditingController.addListener(onSearchTextChanges);

    hintText = widget.hintText;

    var keyboardVisibilityController = KeyboardVisibilityController();

    // Subscribe
    keyboardVisibilityController.onChange.listen((bool visible) {
      if (!visible) {
        //TODO:关闭输入法显示底部导航栏
        // var b = MainPageData(null);
        // b.needShowMissQuestionPop = false;
        // eventCurrentIndex.fire(MainPageInEvent(b));
      }
      // if (!visible) {
      //   if (widget.textEditingController.text != null) {
      //     sendSubmitResults(widget.textEditingController.text);
      //   }
      //   // FocusScope.of(context).unfocus();
      //   SystemChannels.textInput.invokeMethod('TextInput.hide');
      //   if (widget.hideHintOnTextInputFocus) {
      //     setState(() {
      //       hintText = widget.hintText;
      //     });
      //   }
      // } else {
      //   if (widget.hideHintOnTextInputFocus) {
      //     setState(() {
      //       hintText = "";
      //     });
      //   }
      // }
      // if(mounted)
      // setState(() {
      // });
    });
  }

  @override
  void dispose() {
    widget.textEditingController.dispose();
    super.dispose();
  }

  cleanText() {
    if (widget.textEditingController.text.isEmpty) return;
    setState(() {
      widget.textEditingController.clear();
      widget.onSearchClear();
      isItemClicked = true;
    });
  }

  Widget _getRichText(String result) {
    String textSelected = "";
    String textBefore = "";
    String textAfter = "";
    try {
      String lowerCaseResult =
          widget.caseSensitive ? result : result.toLowerCase();
      String lowerCaseSearchText = widget.caseSensitive
          ? widget.textEditingController.text
          : widget.textEditingController.text.toLowerCase();
      textSelected = result.substring(
          lowerCaseResult.indexOf(lowerCaseSearchText),
          lowerCaseResult.indexOf(lowerCaseSearchText) +
              lowerCaseSearchText.length);
      String loserCaseTextSelected =
          widget.caseSensitive ? textSelected : textSelected.toLowerCase();
      textBefore =
          result.substring(0, lowerCaseResult.indexOf(loserCaseTextSelected));
      if (lowerCaseResult.indexOf(loserCaseTextSelected) + textSelected.length <
          result.length) {
        textAfter = result.substring(
            lowerCaseResult.indexOf(loserCaseTextSelected) +
                textSelected.length,
            result.length);
      }
    } catch (e) {
      print(e.toString());
    }
    return Container(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: widget.textEditingController.text.isNotEmpty
            ? TextSpan(
                children: [
                  if (widget.textEditingController.text.isNotEmpty)
                    TextSpan(
                      text: textBefore,
                      style: TextStyle(
                        fontSize: widget.fontSize,
                        color: widget.unSelectedTextColor ?? Colors.grey[400],
                      ),
                    ),
                  TextSpan(
                    text: textSelected,
                    style: TextStyle(
                      fontSize: widget.fontSize,
                      color: widget.selectedTextColor ?? Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: textAfter,
                    style: TextStyle(
                      fontSize: widget.fontSize,
                      color: widget.unSelectedTextColor ?? Colors.grey[400],
                    ),
                  )
                ],
              )
            : TextSpan(
                text: result,
                style: TextStyle(
                  fontSize: widget.fontSize,
                  color: widget.unSelectedTextColor ?? Colors.grey[400],
                ),
              ),
      ),
    );
  }

  /// 改字数限制，每输入一个中文字符，要减1。
  /// 字符要求：10个汉字或20个英文
  int maxLength = 20;

  void _changeMaxLimit(String value) {
    // maxLength = widget.inputFormatters ?? 20;
    maxLength = widget.inputFormatters;
    for (int i = 0; i < value.length; i++) {
      if (value.codeUnitAt(i) > 122) {
        if (widget.inputFormatters == 16) {
          maxLength -= 1;
        } else {
          maxLength -= 3;
        }
      }
    }

    if (maxLength <= 0 && (widget.inputFormatters != 16)) {
      maxLength = 7;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    bool isLtr = Directionality.of(context) == TextDirection.ltr;
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: widget.inputTextFieldBgColor,
              borderRadius: results.isEmpty || isItemClicked
                  ? BorderRadius.all(
                      Radius.circular(widget.borderRadius),
                    )
                  : BorderRadius.only(
                      topLeft: Radius.circular(widget.borderRadius),
                      topRight: Radius.circular(widget.borderRadius),
                    ),
            ),
            child: Stack(
              children: [
                TextField(
                  keyboardType: widget.textInputType,
                  obscureText: widget.showPas,
                  textInputAction: widget.textInputAction,
                  onChanged: (value) {
                    _changeMaxLimit(value);
                  },

                  ///TODO:设置密码和正则
                  inputFormatters: widget.inputFormatters == 20
                      ? [
                          LengthLimitingTextInputFormatter(maxLength,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced),
                          FilteringTextInputFormatter.allow(
                              RegExp("[A-Za-z0-9]"))
                        ]
                      : [
                          LengthLimitingTextInputFormatter(maxLength,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced),
                        ],
                  autocorrect: widget.autoCorrect,
                  enabled: widget.enabled,
                  onEditingComplete: () {
                    sendSubmitResults(widget.textEditingController.text);
                    FocusScope.of(context).unfocus();
                  },
                  onSubmitted: (value) {
                    FocusScope.of(context).unfocus();
                  },
                  onTap: () {
                    //TODO:弹出输入法隐藏底部导航栏
                    // var b = MainPageData(null);
                    // b.needShowMissQuestionPop = true;
                    // eventCurrentIndex.fire(MainPageInEvent(b));
                    setState(() {
                      isItemClicked = false;
                    });
                  },
                  controller: widget.textEditingController,
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: widget.hintTextColor,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: widget.verticalPadding,
                        horizontal: widget.horizontalPadding),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: widget.disabledBorderColor != null
                              ? widget.disabledBorderColor!
                              : Colors.grey[300]!),
                      borderRadius: BorderRadius.all(
                        Radius.circular(widget.borderRadius),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: widget.enabledBorderColor != null
                            ? widget.enabledBorderColor!
                            : Colors.grey[300]!,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(widget.borderRadius),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: widget.focusedBorderColor != null
                              ? widget.focusedBorderColor!
                              : Colors.grey[300]!),
                      borderRadius: results.isEmpty || isItemClicked
                          ? BorderRadius.all(
                              Radius.circular(widget.borderRadius),
                            )
                          : BorderRadius.only(
                              topLeft: Radius.circular(widget.borderRadius),
                              topRight: Radius.circular(widget.borderRadius),
                            ),
                    ),
                  ),
                  style: TextStyle(
                    color: isDayOrNight() ? Colors.black : Colors.black,
                    fontSize: widget.fontSize,
                  ),
                  cursorColor: widget.cursorColor ?? Colors.grey[600],
                ),
                widget.clearSearchEnabled &&
                        widget.textEditingController.text.isNotEmpty &&
                        widget.isShowRightClick
                    ? Positioned(
                        right: HYSizeFit.setRpx(10),
                        top: 0,
                        bottom: 10,
                        left: 0,
                        child: Align(
                          alignment: isLtr
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          child: InkWell(
                            onTap: () {
                              if (widget.textEditingController.text.isEmpty) {
                                return;
                              }
                              setState(() {
                                widget.textEditingController.clear();
                                widget.onSearchClear();
                                isItemClicked = true;
                              });
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Image(
                                image: AssetImage(
                                    Global.getCommonsImageResource(
                                        "closeReviewSearchIcon.png")),
                                width: HYSizeFit.setRpx(17),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(),

                //TODO:有输入的历史记录
                widget.clearSearchEnabled &&
                        widget.textEditingController.text.isNotEmpty &&
                        widget.isShowRightClick
                    ? Positioned(
                        right: HYSizeFit.setRpx(5),
                        top: 0,
                        bottom: 0,
                        left: 0,
                        child: Align(
                          alignment: isLtr
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          child: InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              widget.rightCallback();
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Image(
                                image: AssetImage(
                                    Global.getCommonsImageResource(
                                        widget.rightImg)),
                                width: HYSizeFit.setRpx(17),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(),

                InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      widget.rightCallback();
                    },
                    child: Container(
                      height: HYSizeFit.setRpx(40),
                      margin: EdgeInsets.only(left: HYSizeFit.setRpx(10)),
                      child: Image(
                        image: AssetImage(
                            Global.getCommonsImageResource(widget.leftImg)),
                        width: HYSizeFit.setRpx(17),
                        fit: BoxFit.fitWidth,
                      ),
                    ))
              ],
            ),
          ),
          if (!isItemClicked && widget.showListOfResults)
            SizedBox(
              height: results.length * widget.singleItemHeight,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: results.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      String value = results[index];
                      widget.onItemTap(widget.data.indexOf(value), value);
                      widget.textEditingController.text = value;
                      widget.textEditingController.selection =
                          TextSelection.fromPosition(
                        TextPosition(
                          offset: value.length,
                        ),
                      );
                      setState(() {
                        isItemClicked = true;
                      });
                    },
                    child: Container(
                      height: widget.singleItemHeight,
                      padding: const EdgeInsets.all(8.0),
                      child: _getRichText(results[index]),
                      decoration: ShapeDecoration(
                        color: widget.searchResultsBgColor,
                        shape: CustomRoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                              index == (results.length - 1)
                                  ? widget.borderRadius
                                  : 0.0,
                            ),
                            bottomRight: Radius.circular(
                              index == (results.length - 1)
                                  ? widget.borderRadius
                                  : 0.0,
                            ),
                          ),
                          leftSide: BorderSide(color: widget.borderColor),
                          bottomLeftCornerSide:
                              BorderSide(color: widget.borderColor),
                          rightSide: BorderSide(color: widget.borderColor),
                          bottomRightCornerSide:
                              BorderSide(color: widget.borderColor),
                          bottomSide: BorderSide(color: widget.borderColor),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }

  void onSearchTextChanges() {
    if (lastSubmittedText == widget.textEditingController.text &&
        isItemClicked == true) {
      setState(() {
        isItemClicked = false;
      });
      return;
    }
    setState(() {
      isItemClicked = false;
    });
    if (widget.textEditingController.text.length < widget.minLettersForSearch) {
      setState(() {
        results = [];
      });
    } else {
      String searchText = widget.caseSensitive
          ? widget.textEditingController.text
          : widget.textEditingController.text.toLowerCase();
      switch (widget.searchMode) {
        case SearchModeNew.STARTING_WITH:
          setState(() {
            results = widget.data
                .where(
                  (element) =>
                      (widget.caseSensitive ? element : element.toLowerCase())
                          .startsWith(searchText),
                )
                .toList();
          });
          break;
        case SearchModeNew.CONTAINS:
          setState(() {
            results = widget.data
                .where(
                  (element) =>
                      (widget.caseSensitive ? element : element.toLowerCase())
                          .contains(searchText),
                )
                .toList();
          });
          break;
        case SearchModeNew.EXACT_MATCH:
          setState(() {
            results = widget.data
                .where(
                  (element) =>
                      (widget.caseSensitive
                          ? element
                          : element.toLowerCase()) ==
                      searchText,
                )
                .toList();
          });
          break;
      }
      setState(() {
        if (results.length > widget.maxElementsToDisplay) {
          results = results.sublist(0, widget.maxElementsToDisplay);
        }
      });
    }
    // now send the latest updates
    if (widget.onEditingProgress != null) {
      try {
        widget.onEditingProgress!(widget.textEditingController.text, results);
      } catch (e) {
        widget.onEditingProgress!("", results);
      }
    }
  }

  void sendSubmitResults(value) {
    try {
      if (lastSubmittedText == value) {
        setState(() {
          results = [];
        });
        return; // Nothing new to Submit
      }
      lastSubmittedText = value;
      setState(() {
        isItemClicked = true;
      });
      if (lastSubmittedText == "") {
        widget.onSearchClear();
      } else {
        widget.onSubmitted!(lastSubmittedText, results);
      }
      setState(() {
        results = [];
      });
    } catch (e) {
      print(e.toString());
    }
  }
}

enum SearchModeNew {
  STARTING_WITH,
  CONTAINS,
  EXACT_MATCH,
}
