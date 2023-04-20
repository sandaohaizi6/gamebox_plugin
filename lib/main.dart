import 'dart:async';
import 'dart:ui' as ui;

// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_in_app_messaging/firebase_in_app_messaging.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:gamebox_plugin/res/colors.dart';
import 'package:gamebox_plugin/res/light_dark_color.dart';
import 'package:gamebox_plugin/res/str_constant.dart';
import 'package:gamebox_plugin/routes/routes.dart';

// import 'package:gamebox_plugin/screen/android_include_flutter/refresh_cloud_page.dart';
import 'package:gamebox_plugin/utils/dart_mode_provider.dart';
import 'package:gamebox_plugin/utils/purchase_manager.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:provider/provider.dart';

import 'commons/global.dart';
import 'generated/l10n.dart';

//Analytics
///TODO:firebase
// FirebaseAnalytics analytics = FirebaseAnalytics.instance;
//in app messaging
///TODO:firebase
// FirebaseInAppMessaging fiam = FirebaseInAppMessaging.instance;

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

//TODO:用户信息
// var stringStream = StreamController<MyUserInfo>.broadcast();
// var generator = Generator<MyUserInfo>();
// var consumer = Consumers();

void main() => Global.initialize().then((e) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);

      ///Include this in main() so purchases are enabled
      if (defaultTargetPlatform == TargetPlatform.android) {
        _initFirebaseAndroid();
        InAppPurchaseAndroidPlatformAddition.enablePendingPurchases();
      }
      _initFirebaseAndroid();

      // Provider.debugCheckInvalidValueType = null;

      // requestPermissions();
      // runApp(const MyApp());
      runApp(getRouter(ui.window.defaultRouteName));
    });

Widget getRouter(String name) {
  switch (name) {
    ///TODO:android 调flutter 页面 CenterPersonPage 【嘻嘻ð】
    case 'android_route':
      // return const RefreshCloudPage();
      return Container();
    //   Container(
    //   width: HYSizeFit.screenWidth,
    //   height: HYSizeFit.screenHeight,
    //   color: Colors.blue,
    //   child: Text(
    //     "123123123123123123123123132132312313123123123",
    //     style: TextStyle(fontSize: 50),
    //   ),
    // );
    default:
      return const MyApp();
  }
}

const appKey = "lmxuhwagl758d";

_initFirebaseAndroid() async {
  // await Firebase.initializeApp();

  // RCIMIWEngineOptions options = RCIMIWEngineOptions.create();
  // RCIMIWEngine engine = await RCIMIWEngine.create(appKey, options);
  // print("engine $engine");
}

// Future<void> requestPermissions() async {
//   if (defaultTargetPlatform == TargetPlatform.android) {
//     List<PermissionType> types = [];
//     // 申请相机权限
//     types.add(PermissionType.CAMERA);
//     // 申请存储权限
//     types.add(PermissionType.STORAGE);
//     // 申请麦克风权限
//     // types.add(PermissionType.MICROPHONE);
//     // 申请日历权限
//     // types.add(PermissionType.CALENDAR);
//
//     // 悬浮球
//     types.add(PermissionType.SYSTEM_ALERT_WINDOW);
//     //TODO:应用权限
//     await EasyPermission.requestPermissions(types);
//   }
// }

RouteManager manager = RouteManager();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  StatelessElement createElement() {
    _initAppConfig();
    return super.createElement();
  }

  _initAppConfig() {
    print("initAppConfig");
    Global.checkDarkModel();

    //Adjust
    // AdjustConfig config = AdjustConfig(
    //     Global.config!.adjustToken,
    //     Global.isDebug()
    //         ? AdjustEnvironment.sandbox
    //         : AdjustEnvironment.production);
    // config.logLevel = AdjustLogLevel.debug;
    // Adjust.start(config);

    PurchaseManage.initialize("Global.config!.appleSanboxKey");

    _initLoading();

    // crashlytics();

    // RegisterUuidKeySecertEvent.isHaveKey();
  }

  //TODO:初始化时的toast样式
  _initLoading() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 1000)
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.custom
      ..boxShadow = [
        const BoxShadow(color: Colors.transparent),
        const BoxShadow(color: Colors.transparent)
      ]
      ..contentPadding = EdgeInsets.zero
      ..indicatorSize = 45.0
      ..radius = 20.0
      ..indicatorColor = Colors.black
      ..textColor = Colors.black
      ..backgroundColor = Colors.white.withOpacity(1)
      // ..maskColor = Colors.black.withOpacity(0.5)
      ..maskColor = Colors.transparent
      ..progressWidth = 10
      ..progressColor = Colors.yellow;

    // EasyLoading.instance
    //   ..displayDuration = const Duration(milliseconds: 3000)
    //   ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    //   ..loadingStyle = EasyLoadingStyle.light
    //   ..indicatorSize = 45.0
    //   ..radius = 20.0
    //   ..indicatorColor = Colors.yellow
    //   ..backgroundColor = Colors.black.withOpacity(0.8)
    //   ..maskColor = Colors.black.withOpacity(0.8);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        // if (snapshot.connectionState == ConnectionState.waiting) {
        //   return const MaterialApp(home: LauncherPage());
        // } else {
        // Loading is done, return the app:
        return MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: DarkModeProvider()),
          ],
          child: Consumer<DarkModeProvider>(
            builder: (context, darkModeProvider, _) {
              APPDarkisOpen = SpUtil.getInt(DARK_MODE, defValue: 0)!;
              return MaterialApp(
                title: "掌芯云",
                // home: EleTheme(
                //   data: EleThemeData(),
                //   child: ProgressDemo(),
                // ),
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                theme: ThemeData(
                  platform: TargetPlatform.iOS,
                  primarySwatch: MaterialColor(
                      0xFFEDEDED
                      //TODO：real_estate
                      ,
                      color),
                  canvasColor: APPDarkisOpen == 0
                      ? string2Color("#EDEDED")
                      : Colors.black,
                  brightness:
                      APPDarkisOpen == 0 ? Brightness.light : Brightness.dark,
                ),
                navigatorKey: navigatorKey,
                builder: EasyLoading.init(),
                // builder: (context, child) => ResponsiveWrapper.builder(
                //   BouncingScrollWrapper.builder(context, child!),
                //   maxWidth: 1200,
                //   minWidth: 450,
                //   defaultScale: true,
                //   breakpoints: [
                //     const ResponsiveBreakpoint.resize(450, name: MOBILE),
                //     // const ResponsiveBreakpoint.autoScale(650,
                //     //     name: TABLET, scaleFactor: 1.25),
                //     const ResponsiveBreakpoint.autoScale(800,
                //         name: TABLET, scaleFactor: 1.4),
                //     const ResponsiveBreakpoint.autoScale(1000,
                //         name: TABLET, scaleFactor: 1.8),
                //   ],
                //   background: Container(color: Color(0xFFF5F5F5)),
                // ),
                debugShowCheckedModeBanner: false,
                onGenerateRoute: (settings) {
                  return manager.routeWithSetting(settings);
                },
                onUnknownRoute: (settings) {
                  return manager.unknowRouteWithSetting(settings);
                },
              );
            },
          ),
        );
        // }
      },
    );
  }
}

class Init {
  Init._();

  static final instance = Init._();

  Future initialize() async {
    FlutterNativeSplash.remove();

    await Future.delayed(const Duration(milliseconds: 10));
    return;
  }
}
