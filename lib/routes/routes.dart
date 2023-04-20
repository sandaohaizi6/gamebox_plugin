import 'package:flutter/material.dart';
import 'package:gamebox_plugin/routes/routes_name.dart';
import 'package:gamebox_plugin/screen/gamebox/dynamic_page/DynamicPage.dart';
import 'package:sp_util/sp_util.dart';

import '../res/str_constant.dart';
import '../screen/gamebox/detail_page/PlayerDetailInfoPage.dart';
import '../screen/gamebox/search_page/SearchPage.dart';
import '../screen/main_page.dart';

class RouteManager {
  // 路由总表
  final Map<String, WidgetBuilder> _routeMap = {};

  // 拦截参数，用来拦截路由表，进行不同操作
  final _isLogin = true;
  final _otherJudge = true;

  RouteManager() {
    _routeMap.addAll(mapForApp());
  }

  // 自定义路由
  MaterialPageRoute routeWithSetting(RouteSettings setting) {
    // 拦截未登录路由
    if (!_isLogin) {
      return loginRoute(setting);
    }

    // 拦截其他情况路由
    if (!_otherJudge) {
      return ohterRoute(setting);
    }

    WidgetBuilder? builder = _routeMap[setting.name];

    if (builder != null) {
      return MaterialPageRoute(builder: builder);
    }

    //TODO:已经登录
    if (SpUtil.getObject(USER_INFO) != null) {
      return MaterialPageRoute(builder: (context) => MainPage());
    } else {
      // return MaterialPageRoute(builder: (context) => LauncherPage());
      //TODO：游客模式
      return MaterialPageRoute(builder: (context) => MainPage());
    }
    //TODO:应用市场:flutter build apk --split-per-abi
    // if (SpUtil.getObject(USER_INFO) != null) {
    //   return MaterialPageRoute(builder: (context) => SuperMarketPage());
    // } else {
    //   return MaterialPageRoute(builder: (context) => SuperMarketPage());
    // }
  }

  // 未知路由
  MaterialPageRoute unknowRouteWithSetting(RouteSettings setting) {
    return MaterialPageRoute(builder: (context) => MainPage());
    // return MaterialPageRoute(builder: (context) => LauncherPage());
  }

  // 登录路由
  MaterialPageRoute loginRoute(RouteSettings setting) {
    return MaterialPageRoute(builder: (context) => MainPage());
    // return MaterialPageRoute(builder: (context) => LauncherPage());
  }

  // 拦截其他情况路由
  MaterialPageRoute ohterRoute(RouteSettings setting) {
    return MaterialPageRoute(builder: (context) => MainPage());
    // return MaterialPageRoute(builder: (context) => LauncherPage());
  }

  // 主表
  Map<String, WidgetBuilder> mapForApp() {
    return {
      MAIN_PAGE: (BuildContext context) => MainPage(),
      GAME_PLAYER_DETAIL_PAGE: (BuildContext context) => PlayerDetailInfoPage(),
      GAME_SEARCH_PAGE: (BuildContext context) => SearchPage(),
      DYNAMIC_PAGE: (BuildContext context) => DynamicPage(),
    };
  }

  // 首页
  Map<String, WidgetBuilder> mapForHome() {
    return {
      // CLOUD_PHONE: (BuildContext context) => const CloudPhonePage(),
      // DISCOVER_PAGE: (BuildContext context) => const DiscoverPage(),
      // MY_PAGE: (BuildContext context) => const MyPage(),
    };
  }
}
