import 'dart:async';
import 'dart:ui';

import 'package:event_bus/event_bus.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gamebox_plugin/res/str_constant.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:rongcloud_im_wrapper_plugin/rongcloud_im_wrapper_plugin.dart';

import '../main.dart';
import '../res/colors.dart';
import '../utils/check_platform.dart';
import '../utils/network_status.dart';
import '../utils/screen_utils.dart';
import '../widget/navigationbar/molten_navigationbar_flutter.dart';
import 'gamebox/HomeBoxPage.dart';
// import 'mine/my_page.dart';

///TODO:tab索引
int currentIndex = 0;
EventBus eventCurrentIndex = EventBus();
//TODO:用户信息
// var streamNavigatorBar = StreamController<MainPageData>.broadcast();
// var generatorNavigatorBar = Generator<MainPageData>();
// var consumerNavigatorBar = Consumers();

var testStatusName = "ALL";
var testStatusId = 1;

///TODO:是否隐藏底部导航栏在弹出弹窗的时候
bool needHiddenBottomNavigator = false;

num delayRefreshEvent = 0;
int delayTime = 1500;

///TODO：主页
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with AutomaticKeepAliveClientMixin<MainPage> {
  _initHomeData() async {
    ///TODO:已购买主机查询接口
    if (SpUtil.getObject(USER_INFO) == null) {
      return;
    }
    // try {
    //   await exeGet(ApiUrl.getBuyedMachine + "?current=1" + "&size=1000",
    //       (response) {
    //     PayedMyDevicesModel myDevicesModel = PayedMyDevicesModel.fromJson(
    //         Map<String, dynamic>.from(json.decode(response)));
    //     return myDevicesModel;
    //   }).then((value) async {
    //     if (value.status == Status.COMPLETED) {
    //       if ((value.data?.code ?? 0) == 200) {
    //         // myDevicesRecordListAll = value.data?.data.records;
    //         // pagesAll = value.data?.data.pages;
    //         await Future.forEach(value.data?.data.records, (element) async {
    //           await DBUtils.getInstance().insertAndUpdateAMyOrderPackages(
    //               element as PayedMyDevicesRecordModel);
    //         });
    //         // myDevicesRecordListAll =
    //         await DBUtils.getInstance().queryZxOrderPackages();
    //         // Provider.of<OrderItemNotifier>(context, listen: false)
    //         //     .payedMyDevicesRecordListAll = myDevicesRecordListAll;
    //       } else {
    //         // Fluttertoast.showToast(
    //         //     msg: value.data?.msg ?? "已购买主机查询接口 错误 code:${value.data?.code}");
    //       }
    //     } else {
    //       // Fluttertoast.showToast(
    //       //     msg: "已购买主机查询接口 接口错误 code:${value.exception?.getMessage()}");
    //     }
    //   });
    // } catch (e) {
    //   print(e.toString());
    // }
  }

  void _initTestData() async {}

  _initStudyData() async {}

  _initReviewDate(int? state) async {}
  static const String _svg_homeIcon =
      '<svg xmlns="http://www.w3.org/2000/svg" width="24.321" height="23.063" viewBox="0 0 24.321 23.063"><path id="路径_11" data-name="路径 11" d="M131.316,138.1l-1.835-1.667a.979.979,0,0,0-.085-.077l-8.04-7.4-.026-.023a2.869,2.869,0,0,0-3.713,0l-.026.023-9.968,9.146a.959.959,0,0,0,1.289,1.42l.311-.282v9.481a2.6,2.6,0,0,0,2.6,2.6H127a2.756,2.756,0,0,0,2.756-2.756v-9.285l.272.247a.959.959,0,1,0,1.289-1.42Zm-9.958,11.3h-3.722c0-.029,0-.057,0-.087v-5.578h3.713v5.578A.828.828,0,0,0,121.357,149.394Zm6.479-.959a.864.864,0,0,1-.839.959h-3.731c0-.029,0-.057,0-.087V142.77a.959.959,0,0,0-.959-.959h-5.631a.959.959,0,0,0-.959.959v6.537c0,.029,0,.058,0,.087H112.1a.96.96,0,0,1-.959-.959v-10.94l7.724-7.109a.956.956,0,0,1,1.216,0l7.756,7.143v10.907Z" transform="translate(-107.309 -128.249)" fill="#111"/></svg>';
  static const String _svg_dynamicIcon =
      '<svg xmlns="http://www.w3.org/2000/svg" width="30.166" height="22.896" viewBox="0 0 30.166 22.896"> <g id="组_2" data-name="组 2" transform="translate(-11.344 -126.7)"> <path id="路径_3" data-name="路径 3" d="M153.048,149.5a11.312,11.312,0,1,1,4.418-.893A11.261,11.261,0,0,1,153.048,149.5Zm0-21.175a9.827,9.827,0,1,0,9.827,9.827A9.838,9.838,0,0,0,153.048,128.321Z" transform="translate(-126.354)" fill="#111" stroke="#111" stroke-width="0.2"/> <path id="路径_4" data-name="路径 4" d="M19.39,326.46c-.848,0-1.65-.036-2.4-.111-3.265-.326-5.16-1.33-5.493-2.905a3.126,3.126,0,0,1,1.045-2.776,12.565,12.565,0,0,1,3.256-2.33l.716,1.345a11.145,11.145,0,0,0-2.857,2.025c-.359.386-.767.946-.668,1.423.093.446.626.779,1.057.979a10.013,10.013,0,0,0,3.094.722,22.381,22.381,0,0,0,2.258.1,38.994,38.994,0,0,0,7.817-.884,34.593,34.593,0,0,0,9.539-3.339,10.044,10.044,0,0,0,2.543-1.9,1.764,1.764,0,0,0,.575-1.321c-.129-.608-1.222-1.369-3.911-1.674l.171-1.512c3.1.353,4.909,1.348,5.229,2.875.329,1.572-1,3.256-3.861,4.864a36.214,36.214,0,0,1-9.973,3.5,40.1,40.1,0,0,1-8.134.919Z" transform="translate(0 -181.884)" fill="#111" stroke="#111" stroke-width="0.2"/> <path id="路径_5" data-name="路径 5" d="M603.6,253.272a.762.762,0,0,1-.758-.695c-.308-3.45-2.737-3.747-2.839-3.759h.006l.132-1.518a4.358,4.358,0,0,1,2,.8,5.63,5.63,0,0,1,2.222,4.343.762.762,0,0,1-.692.827A.492.492,0,0,1,603.6,253.272Z" transform="translate(-570.928 -116.891)" fill="#111" stroke="#111" stroke-width="0.2"/></g></svg>';
  static const String _svg_voiceRoomIcon =
      '<svg xmlns="http://www.w3.org/2000/svg" width="19" height="24.185" viewBox="0 0 19 24.185"> <g id="组_3" data-name="组 3" transform="translate(-136.533 -34.133)"> <path id="路径_6" data-name="路径 6" d="M293.9,34.133a5.676,5.676,0,0,0-5.661,5.662v5.368a5.675,5.675,0,0,0,5.661,5.662l.137,0a5.678,5.678,0,0,0,5.525-5.66V39.795a5.676,5.676,0,0,0-5.661-5.661Zm0,1.727a3.948,3.948,0,0,1,3.934,3.934v5.368A3.949,3.949,0,0,1,294,49.1h-.114a3.946,3.946,0,0,1-3.923-3.934V39.794a3.948,3.948,0,0,1,3.934-3.934Z" transform="translate(-147.868)" fill="#111"/> <path id="路径_7" data-name="路径 7" d="M154.669,455.578a.864.864,0,0,1,.864.864,9.512,9.512,0,0,1-19,0,.864.864,0,1,1,1.727,0,7.788,7.788,0,0,0,15.545,0A.864.864,0,0,1,154.669,455.578Z" transform="translate(0 -410.781)" fill="#111"/> <path id="路径_8" data-name="路径 8" d="M478.73,778.189a.864.864,0,0,1,.861.8l0,.065v3.629a.864.864,0,0,1-1.725.064l0-.065v-3.628A.864.864,0,0,1,478.73,778.189Z" transform="translate(-332.697 -725.229)" fill="#111"/> <path id="路径_9" data-name="路径 9" d="M411.328,256.863v5.182H409.6v-5.182a.864.864,0,0,1,1.727,0Z" transform="translate(-266.158 -216.253)" fill="#111"/></g></svg>';
  static const String _svg_mineIcon =
      '<svg xmlns="http://www.w3.org/2000/svg" width="22.818" height="22.818" viewBox="0 0 22.818 22.818"> <g id="Glyph" transform="translate(-1.306 57.818)"> <path id="路径_10" data-name="路径 10" d="M22.818,22.818H20.536a9.127,9.127,0,0,0-18.254,0H0a11.4,11.4,0,0,1,7.212-10.6,6.845,6.845,0,1,1,8.395,0A11.4,11.4,0,0,1,22.818,22.818ZM15.973,6.845a4.564,4.564,0,1,0-4.564,4.564A4.564,4.564,0,0,0,15.973,6.845Z" transform="translate(1.306 -57.818)"/></g></svg>';

  List<MoltenTab> _tabs(BuildContext context) {
    HYSizeFit.initialize(context);
    return [
      MoltenTab(
        iconNor:
            // Image.asset(
            //   Global.getImageResource("cloudPhoneNor.png"),
            //   width: HYSizeFit.setRpx(32),
            //   height: HYSizeFit.sethRpx(32),
            // )
            Container(
          width: HYSizeFit.setRpx(24.32),
          height: HYSizeFit.setRpx(23.06),
          child: SvgPicture.string(
            _svg_homeIcon,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        icon:
            // Image.asset(
            //   Global.getImageResource("cloudPhone.png"),
            //   width: HYSizeFit.setRpx(32),
            //   height: HYSizeFit.sethRpx(32),
            // )
            Container(
          width: HYSizeFit.setRpx(24.32),
          height: HYSizeFit.setRpx(23.06),
          child: SvgPicture.string(
            _svg_homeIcon,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        // text: S.of(context).cloud_phone,
        text: "首页",
      ),
      // MoltenTab(
      //   iconNor: Image.asset(
      //     Global.getImageResource("discoverIcon.png"),
      //     width: HYSizeFit.setRpx(32),
      //     height: HYSizeFit.sethRpx(32),
      //   ),
      //   icon: Image.asset(
      //     Global.getImageResource("discoverIconNor.png"),
      //     width: HYSizeFit.setRpx(32),
      //     height: HYSizeFit.sethRpx(32),
      //   ),
      //   text: S.of(context).discover,
      // ),
      MoltenTab(
        iconNor: Container(
          width: HYSizeFit.setRpx(29),
          height: HYSizeFit.setRpx(23.06),
          child: SvgPicture.string(
            _svg_dynamicIcon,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        icon: Container(
          width: HYSizeFit.setRpx(29),
          height: HYSizeFit.setRpx(23.06),
          child: SvgPicture.string(
            _svg_dynamicIcon,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        // text: S.of(context).my,
        text: "动态",
      ),
      MoltenTab(
        iconNor: Container(
          width: HYSizeFit.setRpx(21),
          height: HYSizeFit.setRpx(23.06),
          child: SvgPicture.string(
            _svg_voiceRoomIcon,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        icon: Container(
          width: HYSizeFit.setRpx(21),
          height: HYSizeFit.setRpx(23.06),
          child: SvgPicture.string(
            _svg_voiceRoomIcon,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        // text: S.of(context).my,
        text: "语音厅",
      ),
      MoltenTab(
        iconNor: Container(
          width: HYSizeFit.setRpx(21),
          height: HYSizeFit.setRpx(23.06),
          child: SvgPicture.string(
            _svg_mineIcon,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        icon: Container(
          width: HYSizeFit.setRpx(21),
          height: HYSizeFit.setRpx(23.06),
          child: SvgPicture.string(
            _svg_mineIcon,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        // text: S.of(context).my,
        text: "我的",
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    _initLoading();
    registerRefreshIndex();
    initData();
    initData_();

    // generatorNavigatorBar.init(streamNavigatorBar);
    // consumerNavigatorBar.init(streamNavigatorBar);
    // consumerNavigatorBar.consume();
  }

  @override
  void dispose() {
    super.dispose();
    // streamNavigatorBar.close();
  }

  //TODO:进入时的toast样式
  _initLoading() {
    // EasyLoading.instance.contentPadding = const EdgeInsets.all(45);

    // startLoading(
    //   true,
    //   duration: 1800,
    // );
  }

  registerRefreshIndex() {
    // eventCurrentIndex.on<MainPageInEvent>().listen((event) {
    //   if (event.mainPageData.currentIndex != null) {
    //     currentIndex = event.mainPageData.currentIndex!;
    //     _pageController.jumpToPage(currentIndex);
    //     setState(() {
    //       currentIndex = currentIndex;
    //     });
    //     initData();
    //   } else {
    //     if (!(!event.mainPageData.needShowCustomQuestionPop)) {
    //       needHiddenBottomNavigator = true;
    //       if (mounted) setState(() {});
    //     } else {
    //       needHiddenBottomNavigator = false;
    //       if (mounted) setState(() {});
    //     }
    //   }
    //   if (mounted) setState(() {});
    // });
  }

  initData() {
    switch (currentIndex) {
      case 0:
        _initHomeData();
        _initTestData();
        _initStudyData();
        break;
      case 1:
        _initStudyData();
        break;
      case 2:
        // _initHomeData();
        break;
      case 3:
        _initReviewDate(null);
        break;
    }
  }

  @override
  void reassemble() {
    super.reassemble();
  }

  // CloudPhonePage cloudPhonePage() => CloudPhonePage();

  // MyPage myPage() => MyPage();

  HomeBoxPage homeBoxPage() => HomeBoxPage();

  // SearchPage homeBoxPage() => SearchPage();

  // PlayerDetail1 homeBoxPage() => PlayerDetail1();
  // PlayerDetailInfoPage homeBoxPage() => PlayerDetailInfoPage();

  /*
   * 存储的四个页面，和android 中的 Fragment一样
   */
  List _pages() => [
        homeBoxPage(),
        // cloudPhonePage(),
        // myPage(),
      ];

  void initData_() {
    _pages();
    // _pageController.addListener(() {
    //   currentIndex = _pageController.page!.toInt();
    //   setState(() {});
    // });
  }

  var _pageController = PageController();

  void _pageChanged(int index) {
    currentIndex = index;
    print('_pageChanged ${currentIndex}');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    HYSizeFit.initialize(context);
    NetworkUtil.getInstance()
        .checkNetwork(navigatorKey.currentState!.overlay!.context);

    return
        // StreamBuilder<MainPageData>(
        //   stream: streamNavigatorBar.stream,
        //   // initialData: "",
        //   builder: (context, snapshot) {
        //     return
        Scaffold(
            body: Stack(
      children: [
        PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: _pageChanged,
            itemCount: _pages().length,
            itemBuilder: (context, index) {
              // currentIndex = index;
              return _pages()[index];
            }),
        // CupertinoTabView(
        //   builder: (context) {
        //     EasyLoading.instance.contentPadding = const EdgeInsets.all(0);
        //
        //     //TODO:==
        //     // EasyLoading.instance.backgroundColor = Colors.white;
        //
        //     switch (currentIndex) {
        //       case 0:
        //         // TODO:Home页浏览用户数
        //         if (DateTime.now().millisecondsSinceEpoch -
        //                 delayRefreshEvent >
        //             delayTime) {
        //           delayRefreshEvent =
        //               DateTime.now().millisecondsSinceEpoch;
        //           firebasePoint("HOME_VIEW");
        //         }
        //         return cloudPhonePage;
        //       // case 1:
        //       //   // TODO:Study页浏览用户数
        //       //   if (DateTime.now().millisecondsSinceEpoch -
        //       //           delayRefreshEvent >
        //       //       delayTime) {
        //       //     delayRefreshEvent =
        //       //         DateTime.now().millisecondsSinceEpoch;
        //       //     firebasePoint("STUDY_VIEW");
        //       //   }
        //       //   return DiscoverPage();
        //       case 1:
        //         return myPage;
        //       // return CalendarPage();
        //       case 3:
        //         // TODO:Tests页浏览用户数
        //         if (DateTime.now().millisecondsSinceEpoch -
        //                 delayRefreshEvent >
        //             delayTime) {
        //           delayRefreshEvent =
        //               DateTime.now().millisecondsSinceEpoch;
        //           firebasePoint("REVIEW_VIEW");
        //         }
        //
        //         return const CloudPhonePage();
        //         // return CalendarPage();
        //         break;
        //
        //       default:
        //         return const CloudPhonePage();
        //       // return CalendarPage();
        //     }
        //     return const CloudPhonePage();
        //     // return CalendarPage();
        //   },
        //   routes: RouteManager().mapForHome(),
        // ),
        Column(
          children: [
            Expanded(
              child: Container(),
              flex: 1,
            ),
            Visibility(
              // visible: snapshot.data?.needShowCustomQuestionPop ?? true,
              visible: false,
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                  child: Container(
                    width: double.infinity,
                    height: HYSizeFit.setRpx(checkPlatform() ? 74 : 72),
                    decoration: BoxDecoration(
                        color: string2Color("#ffffff").withOpacity(0.0),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0))),
                    child: MoltenBottomNavigationBar(
                      margin: EdgeInsets.only(
                          left: HYSizeFit.setRpx(20),
                          right: HYSizeFit.setRpx(20)),
                      barHeight: HYSizeFit.setRpx(checkPlatform() ? 72 : 70),
                      domeHeight: 0,
                      selectedIndex: currentIndex,
                      onTabChange: (clickedIndex) {
                        RTCFunction();

                        _pageController.jumpToPage(clickedIndex);
                        setState(() {
                          currentIndex = clickedIndex;
                        });
                      },
                      tabs: _tabs(context),
                    ), //背景上面的其他组件
                  ),
                ),
              ),
            )
          ],
        )
      ],
    ));
    // });
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  late RCIMIWEngine engine;

  Future<void> RTCFunction() async {
    RCIMIWEngineOptions options = RCIMIWEngineOptions.create();

    if (GetPlatform.isAndroid) {
      RCIMIWEngineOptions options = RCIMIWEngineOptions.create();
      RCIMIWPushOptions pushOptions = RCIMIWPushOptions.create(
        //小米推送 Id
        idMI: '',
        //小米推送 appKey
        appKeyMI: '',
        //魅族推送 Id
        appIdMeizu: '',
        //魅族推送 appKey
        appKeyMeizu: '',
        //Oppo 推送 appKey
        appKeyOPPO: '',
        //Oppo 推送 appSecret
        appSecretOPPO: '',
        //是否开启华为推送
        enableHWPush: true,
        //是否开启 FCM 推送
        enableFCM: true,
        //是否开启 Vivo 推送
        enableVIVOPush: true,
      );
      options.pushOptions = pushOptions;
    }

    //TODO:是否踢出当前正在重连的设备 防止同一账号不同设备相互挤兑 【需要提工单服务才能开启,查看融云注意事项】
    //TODO：设置为 true：如果重连时发现已有别的移动端设备在线，将不再重连，不影响已正常登录的移动端设备。
    //TODO：设置为 false：如果重连时发现已有别的移动端设备在线，将踢出已在线的移动端设备，使当前设备上线。
    options.kickReconnectDevice = true;

    //TODO：压缩策略配置 图片和视频
    RCIMIWCompressOptions compressOptions = RCIMIWCompressOptions.create(
      originalImageQuality: 80,
      originalImageMaxSize: 1080,
      originalImageSize: 200,
      thumbnailQuality: 80,
      thumbnailMaxSize: 500,
      thumbnailMinSize: 200,
      sightCompressHeight: 160,
      sightCompressWidth: 160,
    );
    options.compressOptions = compressOptions;

    //TODO：初始化 token 无效(31004)排查方案： token 错误	检查客户端初始化使用的 AppKey 和您服务器获取 Token 使用的 AppKey 是否一致
    engine = await RCIMIWEngine.create("lmxuhwagl758d", options);
    print("engine $engine");

    RCIMIWConnectCallback? callback =
        RCIMIWConnectCallback(onDatabaseOpened: (int? code) {
      //TODO：数据库打开的回调：状态码，0 代表成功，非 0 代表出现异常
      print("code $code");
    }, onConnected: (int? code, String? userId) {
      //TODO：收到连接状态的回调：状态码，0 代表成功，非 0 代表出现异常 ｜  链接成功的用户 ID
      print("code $code userId $userId");
    });

    //TODO:请根据应用的业务需求与设计，自行决定合适的时机（登陆、注册、或其他时机以免无法进入应用主页），向融云聊天服务器发起连接请求
    //TODO：app登录成功时只调一次：SDK 本身有重连机制，在一个应用生命周期内不须多次调用connect() 。否则可能触发多个回调，触发导致回调被清除。
    //TODO:一旦触发连接错误的回调，SDK 将退出重连机制。请根据具体的状态码自行处理 如：onConnectionStatusChanged：自动连接超时，SDK将不会继续连接
    //TODO:SDK 尝试重连时，时间间隔逐次变大，分别是 0s, 0.25s, 0.5s, 1s, 2s, 4s, 8s, 16s, 32s。之后每 64s 重试一次。
    //TODO:当 APP 切换到前台或者网络状态发生变化，重连时间间隔会从 0s 开始，保证这种情况下能尽快的连接成功。
    int? ret = await engine?.connect(
        //TODO:注册用户。
        //TODO:获取 Token 需要提供应用的 App Key 和 App Secret。客户端如果保存这些凭证，一旦被反编译，会导致应用的 App Key 和 App Secret 泄露。所以，请务必确保在应用服务端获取 Token。
        //TODO:Token 有效期可在开发者后台进行配置，默认为永久有效。即使重新生成了一个新 Token，未过期的旧 Token 仍然有效。Token 失效后，需要重新获取 Token。
        //TODO：用户身份验证令牌 (Token) 代表一个用户在融云的唯一身份标识。获取 Token 必须调用融云服务端 API 的接口。请提供准确的 App Key / Secret，并使用用户 ID 换取对应的 Token。
        //TODO: 同一个用户 ID 多次获取 Token（例如重新获取 Token），所有已获取 Token 在有效期内均可以正常用于连接。您可以根据业务需求作废指定用户的所有 Token。作废 Token 的操作不影响使用该 Token 建立的已有连接。
        //TODO: 客户端用户一旦重新连接（包括弱网情况下断线自动重连），会返回 Token 失效错误。此时应重新获取 Token。
        //TODO: 作废 Token 后，如果 App 用户在客户端使用已废弃的 Token 建立 IM 连接，会返回 Token 失效的错误。此时应重新获取 Token。
        //TODO:https://doc.rongcloud.cn/imserver/server/v1/user/expire
        //TODO:危险操作：一旦您在开发者后台刷新 App Secret ，App Key 下已获取的 Token 均会失效。请使用新的 App Secret 生成 API 签名，并重新获取 Token。
        //TODO:获取 Token 时传入的名称（name）和 头像（portraitUri），仅供移动端远程推送时使用。如需变更名称和头像信息，建议通过 修改用户信 息的方法进行 变更 。在重新获取 Token 时如果传入新的数据，则会覆盖旧的名称与头像数据。
        //TODO:userId:App 自行定义的用户 ID，用于换取 Token。支持大小写英文字母与数字的组合，最大长度 64 字节。
        //TODO:name:推送服务使用的用户名称。不区分符号、英文字符、中文字符，统一限制最多 64 个字符。注意：该 name 字段仅用于融云的推送服务，作为在移动客户端推送通知中默认显示的用户名称。因为融云服务端不提供用户信息托管服务，所以不支持客户端 SDK 主动获取该用户名称数据。
        //TODO:portraitUri:用户头像 URI，最大长度 1024 字节。注意：因为融云服务端不提供用户信息托管服务，所以不支持客户端 SDK 主动获取该用户头像数据。
        //TODO:在单聊业务中发送消息时，只需要告知融云 userId 即可定位到接收方。考虑到安全问题，强烈建议开发者注册用户不要使用连续的 userId，以防止被恶意利用。
        //TODO: 部分旧版 Server SDK 中 portraitUri 字段为必填项；若不希望填写该字段，请升级 Server SDK 到最新版，或者传一个固定字符即可，比如：”_”。
        //TODO:token	String	用户身份验证 Token，长度在 256 字节以内，可以保存应用内。Token 中携带 IM 服务动态导航地址，开发者不需要进行处理。
        //TODO: userId	String	返回输入参数中提供的用户 ID。
        //TODO:1：首次连接时获取 Token 存app本地
        //TODO：2：非首次连接时使用已有 Token
        // 后续登录过程中，不必再向融云请求 Token，由 App Server 直接提供之前保存过的 Token。
        //请实现重新向服务器获取 Token 的代码逻辑，以处理 Token 失效的情况。
        // Token 具有有效期，默认为永久有效，可在开发者后台进行修改。 如果connect 返回token失效则调公司 刷新token api
        //TODO：3:如果您的 App 是免登录设计，也可以将 Token 保存在 App 本地（注意保证本地数据存储安全），直接登录。
        'ap0qEuZy2z2bVAXZ6kl4pDlWxC/KEr65@2qvt.cn.rongnav.com;2qvt.cn.rongcfg.com',
        //TOKEN
        30, //秒
        callback:
            callback); //链接事件回调。SDK 从 5.3.1 版本开始支持 callback 方式回调。如果传入了 callback 参数，仅触发 callback 回调。

    //TODO：当次接口操作的状态码。0 代表调用成功 具体结果需要实现接口回调，非 0 代表当前接口调用操作失败，不会触发接口回调，详细错误参考错误码
    //TODO：在 code 为 31004 的情况下，您需要请求您的服务器重新获取 Token【刷新token api】 并建立连接，但是注意避免无限循环，以免影响 App 用户体验。
    //TODO：token 过期	检查开发者是否在 开发者后台 设置了 Token 过期时间，过期之后需要请求您的服务器重新获取 Token 并再次用新的 Token 建立连接
    //TODO:token错误码：android：http://doc.rongcloud.cn/im/Android/5.X/code/code ｜ iOS:http://doc.rongcloud.cn/im/IOS/5.X/code/code
    print("ret $ret ");

    //TODO:设置状态监听：当 SDK 与融云服务器的连接状态发生变化时，开发者可通过下面方法进行处理。
    ///// 网络不可用
    //   /// 连接成功
    //   /// 连接中
    //   /// 未连接
    //   /// TODO：单点登录：用户账户在其他设备登录，本机会被踢掉线 [？？是否手动触发应用主动断开连接]
    //重连互踢策略用于控制 SDK 自动重连成功时是否需要下线的设备。
    //   /// Token不正确
    //   /// TODO：用户被开发者后台封禁 [？？是否手动触发应用主动断开连接]
    //   /// TODO：用户主动调用disconnect或logout接口断开连接
    //   /// 连接暂时挂起（多是由于网络问题导致），SDK会在合适时机进行自动重连
    //   /// TODO：自动连接超时，SDK将不会继续连接，用户需要做超时处理，再自行调用connectWithToken接口进行连接 [？？]
    //   /// 异常情况
    engine?.onConnectionStatusChanged = (RCIMIWConnectionStatus? status) {
      print("status $status ");
    };

    engine?.onMessageReceived =
        (RCIMIWMessage? message, int? left, bool? offline, bool? hasPackage) {
      //接收到的消息对象｜ 当客户端连接成功后，服务端会将所有补偿消息以消息包的形式下发给客户端，最多每 200 条消息为一个消息包，即一个 Package, 客户端接受到消息包后，会逐条解析并通知应用。left 为当前消息包（Package）里还剩余的消息条数
      //消息是否离线消息 ｜ 是否在服务端还存在未下发的消息包
      print(
          "message $message left $left offline $offline hasPackage $hasPackage  ");
    };

    //TODO：消息相关：消息介绍 文本消息
    RCIMIWTextMessage? textMessage = await engine?.createTextMessage(
      RCIMIWConversationType.private, //会话类型，
      "1", //会话 ID
      null, //频道 ID，仅支持超级群使用，其他会话类型传 null 即可。
      "你好世界", //文本内容
    );

    //语音消息
    // RCIMIWVoiceMessage? message = await engine.createVoiceMessage(
    //   type,//会话类型
    //   targetId,//会话 ID
    //   channelId,//频道 ID，仅支持超级群使用，其他会话类型传 null 即可。
    //   path,//语音消息的本地路径，必须为有效路径
    //   duration,//	语音消息的消息时长
    // );

    //图片消息
    // RCIMIWImageMessage? message = await engine.createImageMessage(
    //   type,//会话类型
    //   targetId,//会话 ID
    //   channelId,//频道 ID，仅支持超级群使用，其他会话类型传 null 即可。
    //   path,//图片消息的本地路径，必须为有效路径
    // );

    // 文件消息
    // RCIMIWFileMessage? message = await engine.createFileMessage(
    //   type,//会话类型
    //   targetId,//会话 ID
    //   channelId,//频道 ID，仅支持超级群使用，其他会话类型传 null 即可。
    //   path,//文件消息的本地路径，必须为有效路径
    // );

    //小视频消息
    // RCIMIWSightMessage? message = await engine.createSightMessage(
    //   type,
    //   targetId,
    //   channelId,
    //   path,//小视频消息的本地路径，必须为有效路径
    //   duration,	//小视频消息的视频时长
    // );

    //GIF 图消息
    // RCIMIWGIFMessage? message = await engine.createGIFMessage(
    //     type,
    //     targetId,
    //     channelId,
    //     path //GIF 消息的本地路径
    // );

    //引用消息
    // RCIMIWReferenceMessage? message = await engine.createReferenceMessage(
    //   type,
    //   targetId,
    //   channelId,
    //   message,//引用的消息
    //   text,//引用的文本内容
    // );

    //位置消息
    // RCIMIWLocationMessage? message = await engine?.createLocationMessage(
    //   type,
    //   targetId,
    //   channelId,
    //   double.parse(longitude), 经度
    //   double.parse(latitude), 纬度
    //   poiName, POI 信息
    //   path, 缩略图本地路径，必须为有效路径
    // );

    // 自定义消息
    // RCIMIWCustomMessage? message = await engine.createCustomMessage(
    //   type,
    //   targetId,
    //   channelId,
    //   policy, 消息的存储策略
    //   messageIdentifier, 消息的标识符，需唯一
    //   fields, 消息的内容键值对
    // );

    engine.sendMessage(textMessage!!);

    engine?.onMessageAttached = (RCIMIWMessage? message) {
      print("message $message ");
    };

    engine?.onMessageSent = (int? code, RCIMIWMessage? message) {
      print("code $code  message $message ");
    };

    //TODO:SDK 在前后台切换或者网络出现异常都会自动重连，会保证连接的可靠性。除非 App 逻辑需要登出，否则不需要调用此方法进行手动断开。
    //TODO:此方法来指定在用户断开连接之后是否接收消息推送
    //TODO:应用主动断开连接后，SDK 将退出重连机制，不再尝试重连。
    int? disconnected = await engine
        ?.disconnect(false); //退出后是否接收 push，true:断开后接收远程推送，false:断开后不再接收远程推送

    await engine?.destroy();
  }
}
