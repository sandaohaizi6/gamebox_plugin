import 'dart:convert';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gamebox_plugin/request/api_response.dart';
import 'package:gamebox_plugin/request/utils/module.dart';
import 'package:gamebox_plugin/res/model/calendar_str.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sp_util/sp_util.dart';

import '../main.dart';
import '../request/http_utils.dart';
import '../request/interceptor/storage.dart';
import '../request/service/util_history.dart';
import '../request/utils/api.dart';
import '../res/model/base_str.dart';
import '../res/str_constant.dart';
import '../utils/dart_mode_provider.dart';
// import '../utils/firestore_utils.dart';

const String CALENDAR = 'CALENDAR';
String uuid = "";
bool? isDark = false;

class Global {
  static const String APP_NAME_KEY = "APP_NAME";

  static BaseStr? config;

  //todo 这里修改APP
  static const String appName =
      String.fromEnvironment(APP_NAME_KEY, defaultValue: CALENDAR);

  static String getCommonsImageResource(String image) {
    // print("Path========${getAssetsPath()}$image");
    return "${getAssetsPath()}$image";
  }

  static String getImageResource(String image) {
    // print("Path========${getAssetsPath()}$image");
    return "${getAssetsPath()}$image";
  }

  static initializeAppConfig() async {
    await SpUtil.getInstance();
    if (getSelectAppName() != "") {
      getConfig(appName);
    }

    switch (appName) {
      case CALENDAR:
        (config as CalendarStr).initializeConfig();
        break;
    }
  }

  static String getSelectAppName() {
    return appName;
  }

  static String getAssetsPath() {
    switch (getSelectAppName()) {
      case CALENDAR:
        // return "assets/calendar/";
        return "assets/gamebox/";
      default:
        // return "assets/calendar/";
        return "assets/gamebox/";
    }
  }

  static initialize() async {
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    // generator.init(stringStream);
    // consumer.init(stringStream);
    // consumer.consume();

    try {
      // await Firebase.initializeApp().then((value) {
      //   print("Firebaseapp isblank = ${value.isBlank}");
      // });

      try {
        await SpUtil.getInstance();
        // FireStoreUtils.getInstance();
      } catch (e) {}
    } catch (e) {
      print(e.toString());
    }

    ///TODO:HTTP请求
    await SpUtils().init();
    uuid = await AppTrackingTransparency.getAdvertisingIdentifier();
    // 初始化request类
    HttpUtils.init(
      baseUrl: ApiUrl.baseUrl,
    );
    // 历史记录，全局
    await Get.putAsync(() => HistoryService().init());

    ///TODO:获取免费还是付费模式
    // await getPayOrFree();
    getConfig(appName);
  }

  ///TODO:获取免费还是付费模式
  static getPayOrFree() async {
    //TODO:启动UI界面查询接口
    await exeGet(ApiUrl.getStartUpQuery, (response) {
      // jsonEncode(response);
      // CreateGroupModel data = CreateGroupModel.fromJson(response);
      // return data;
      print(json.encode(response));
      // FreeOrPayModel freeOrPayModel = FreeOrPayModel.fromJson(response);
      // return freeOrPayModel;
    }, isOpenHeader: false)
        .then((value) async {
      if (value.status == Status.COMPLETED) {
        if ((value.data?.code ?? 0) == 200) {
          switch (value.data?.data.uiType) {
            case 0:

              ///TODO:免费模式
              SpUtil.putInt(APP_MODEL_TYPE, 0);

              break;
            case 1:

              ///TODO:付费模式
              SpUtil.putInt(APP_MODEL_TYPE, 1);

              break;
            case 2:

              ///TODO:免费+付费模式
              SpUtil.putInt(APP_MODEL_TYPE, 2);

              break;
          }
        } else {
          Fluttertoast.showToast(
              msg: value.data?.msg ?? "启动UI界面查询接口 错误 code:${value.data?.code}");
        }
      } else {
        Fluttertoast.showToast(
            msg: "启动UI界面查询接口 接口错误 code:${value.exception?.getMessage()}");
      }
    });
  }

  static getConfig(String appName) {
    switch (appName) {
      case CALENDAR:
        config = CalendarStr();
        break;
    }
  }

  ///TODO:检查暗黑模式
  static checkDarkModel() async {
    await SpUtil.getInstance();
    isDark = SpUtil.getInt(DARK_MODE, defValue: 0)! == 1;

    if (isDark!) {
      try {
        Provider.of<DarkModeProvider>(
                navigatorKey.currentState!.overlay!.context,
                listen: false)
            .changeMode(1);
      } catch (e) {
        print(e.toString());
      }
    } else {
      try {
        Provider.of<DarkModeProvider>(
                navigatorKey.currentState!.overlay!.context,
                listen: false)
            .changeMode(0);
      } catch (e) {
        print(e.toString());
      }
    }
  }

  //判断是否为Debug模式
  static bool isDebug() {
    bool inDebug = false;
    assert(inDebug = true);
    return inDebug;
  }
}
