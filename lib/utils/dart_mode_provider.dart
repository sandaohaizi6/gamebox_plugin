import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';

import '../commons/global.dart';
import '../res/str_constant.dart';

class DarkModeProvider with ChangeNotifier {
  /// 深色模式 0: 关闭 1: 开启 2: 随系统
  int _darkMode = 0;

  int get darkMode => _darkMode;

  void changeMode(int darkMode) async {
    _darkMode = darkMode;
    SpUtil.putInt(DARK_MODE, darkMode);
    isDark = darkMode == 1;
    notifyListeners();
  }
}
