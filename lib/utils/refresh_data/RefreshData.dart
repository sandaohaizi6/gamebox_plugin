// import 'package:flutter/cupertino.dart';
// import 'package:provider/provider.dart';
//
// import '../../screen/main_page.dart';
//
// class RefreshData {
//   ///TODO:在里面一键登录成功后立即刷新数据
//   static void refreshData() {
//     eventCurrentIndex.fire(ActiveCodeInEvent(ActiveCodeData(0)));
//     var mainPop = MainPageData(currentIndex);
//     mainPop.needShowCustomQuestionPop = true;
//     generatorNavigatorBar.generate(mainPop);
//   }
//
//   ///TODO：处理倒计时不走的bug
//   static void refreshDataNorShow(BuildContext context) {
//     eventCurrentIndex.fire(ActiveCodeInEvent(ActiveCodeData(0)));
//     var mainPop = MainPageData(currentIndex);
//
//     if (Provider.of<InstallItemCheckVersionNotifier>(context, listen: false)
//             .isShowCheckUpdateVersion ||
//         Provider.of<InstallItemCheckVersionNotifier>(context, listen: false)
//             .isShowStartLostQuery ||
//         Provider.of<InstallItemCheckVersionNotifier>(context, listen: false)
//             .isShowDeleteFileName ||
//         Provider.of<InstallItemCheckVersionNotifier>(context, listen: false)
//             .isCloudQueryDialog ||
//         Provider.of<InstallItemCheckVersionNotifier>(context, listen: false)
//             .isShowCancelQuery ||
//         Provider.of<InstallItemCheckVersionNotifier>(context, listen: false)
//             .isRename) {
//       mainPop.needShowCustomQuestionPop = false;
//     } else {
//       mainPop.needShowCustomQuestionPop = true;
//     }
//
//     generatorNavigatorBar.generate(mainPop);
//   }
//
//   ///TODO:刷新登录后位置
//   static void refreshLoginPosition() {
//     Future.delayed(const Duration(milliseconds: 100), () {
//       eventCurrentIndex.fire(MainPageInEvent(MainPageData(currentIndex)));
//       var mainPop = MainPageData(currentIndex);
//       mainPop.needShowCustomQuestionPop = true;
//       generatorNavigatorBar.generate(mainPop);
//     });
//   }
// }
