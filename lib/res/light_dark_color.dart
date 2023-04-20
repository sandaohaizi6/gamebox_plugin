import 'dart:ui';

import 'colors.dart';

int APPDarkisOpen = 0;

bool isDayOrNight() {
  return APPDarkisOpen == 0;
}

Color launchPageTopBtnBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#3081F2");
  } else {
    return string2Color("#3081F2");
  }
}

Color launchPageTopBtnBgs() {
  if (APPDarkisOpen == 0) {
    return string2Color("#F15D3C");
  } else {
    return string2Color("#F15D3C");
  }
}

Color launchPageBottomBtnBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#BABCBE");
  } else {
    return string2Color("#BABCBE");
  }
}

Color launchPageBottomRectangleBtnBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#3E3F40");
  } else {
    return string2Color("#3E3F40");
  }
}

Color launchPageTopBtnTxBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#FFFFFF");
  } else {
    return string2Color("#FFFFFF");
  }
}

Color launchPageBottomBtnTxBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#3D3E40");
  } else {
    return string2Color("#3D3E40");
  }
}

Color launchPageBottomDesTxBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#797C80");
  } else {
    return string2Color("#797C80");
  }
}

Color cloudPhonePageTitleBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#3D3E40");
  } else {
    return string2Color("#3D3E40");
  }
}

Color cloudPhonePageAddTxBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#BABCBE");
  } else {
    return string2Color("#BABCBE");
  }
}

Color cloudPhonePageWelcomeTxBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#3D3E40");
  } else {
    return string2Color("#3D3E40");
  }
}

Color discoverPageToolTxBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#797C80");
  } else {
    return string2Color("#797C80");
  }
}

Color discoverRootPageItemStrokeBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#F0F1F2");
  } else {
    return string2Color("#F0F1F2");
  }
}

Color discoverReplaceDeviceTxSelBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#CACBCC");
  } else {
    return string2Color("#CACBCC");
  }
}

Color settingWalletTitleBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#000000");
  } else {
    return string2Color("#000000");
  }
}

Color settingInstallTitleBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#F25555");
  } else {
    return string2Color("#F25555");
  }
}

Color homePageGrayBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#F6F8FB");
  } else {
    return string2Color("#000000");
  }
}

Color testPageGuideDissBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#32495C");
  } else {
    return string2Color("#424249");
  }
}

Color testPageGuideTitleBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#1C2833");
  } else {
    return string2Color("#ffffff");
  }
}

Color testPageGuidesubTitleBg(int type) {
  if (APPDarkisOpen == 0) {
    return string2Color("#587183");
  } else {
    return string2Color("#ffffff").withOpacity(0.7);
  }
}

Color addCloudPhoneItemTxBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#11A611");
  } else {
    return string2Color("#11A611");
  }
}

Color addCloudPhoneDesTimeTxBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#5CE55C");
  } else {
    return string2Color("#5CE55C");
  }
}

Color personCenterYellowTxBg() {
  if (APPDarkisOpen == 0) {
    return string2Color("#FFAA00");
  } else {
    return string2Color("#FFAA00");
  }
}
