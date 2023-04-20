import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamebox_plugin/res/model/calendar_str.dart';

import '../res/model/base_str.dart';
import 'global.dart';

abstract class BaseStatefulWidget extends StatefulWidget {
  const BaseStatefulWidget({Key? key}) : super(key: key);
}

abstract class BaseState<W extends BaseStatefulWidget, M extends CommonsStr>
    extends State<W> {
  M? str;

  @override
  void initState() {
    _initializeStr();
    super.initState();
  }

  _initializeStr() {
    var pageType = widget.runtimeType.toString();
    str = initialize(Global.getSelectAppName(), pageType) as M;
  }

  CommonsStr initialize(String appName, String pageType) {
    switch (appName) {
      case CALENDAR:
        return CalendarStr().initialize(pageType);
    }
    return CalendarStr().initialize(pageType);
  }
}
