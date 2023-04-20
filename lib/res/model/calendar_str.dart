import 'package:gamebox_plugin/generated/l10n.dart';

import 'base_str.dart';

class CalendarStr extends BaseStr {
  CalendarStr() {
    // oldDbName = "question_asvab1.db";
    dbName = "vmos_cloud.db";

    // SKU = "asvab.week";
    // SKU03 = "asvab.month";
    // SKU02 = "asvab.year";
    //
    // appleSanboxKey = "8f4e1ad2fcce4eeda45aa4490b939887";
  }

  initialize(String pageType) {
    switch (pageType) {
      // case LAUNCHER:
      //   return initializeLauncher();
      //
      // case CLOUD_PHONE:
      //   return initializeCloudPhone();
      //
      // case DISCOVER_PAGE:
      //   return initializeDiscover();
      //
      // case DISCOVER_ROOT_PAGE:
      //   return initializeDiscoverRoot();
      //
      // case DISCOVER_BULK_OPERATIONS_PAGE:
      //   return initializeDiscoverBulkOperations();
      //
      // case REPLACE_THE_DEVICE_PAGE:
      //   return initializeDiscoverReplaceTheDevice();
      //
      // case REPLACE_THE_DEVICE_OPERATION_PAGE:
      //   return initializeDiscoverReplaceTheDeviceOperation();
      // case REPLACE_THE_DEVICE_SELECT_PACKAGE_PAGE:
      //   return initializeDiscoverReplaceTheDeviceSelectPackage();

      // case MY_PAGE:
      //   return initializeMyPage();
      //
      // case WALLET_PAGE:
      //   return initializeWalletPage();
      //
      // case MY_DEVICES_PAGE:
      //   return initializeMyDevicesPage();
      //
      // case INSTALL_PAGE:
      //   return initializeInstallPage();
      //
      // case ABOUT_ME_PAGE:
      //   return initializeAboutMePage();
      //
      // case WALLET_ORDER_MAIN_PAGE:
      //   return initializeMyOrderMainPage();
      //
      // case ADD_CLOUD_PHONE_PAGE:
      //   return initializeAddCloudPhonePage();
      //
      // case NOVICE_EXPERIENCE_MAIN_PAGE:
      //   return initializeNoviceExperienceMainPage();
      //
      // case GUIDE:
      //   return initializeGuide();
      // case BILLING:
      //   return initializeBilling();
      // case BILLING_B:
      //   return initializeBillingB();
      // case TEST_SCORE_PAGE:
      //   return initializeTestScore();
      // case TEST_PAGE:
      //   return initializeTest();
      // case STUDY_PAGE:
      //   return initializeStudy();
      // case HOME_PAGE:
      //   return initializeHome();
      // case SETTING_PAGE:
      // case PRIVACY_PAGE:
      //   return initializeSetting();
      // case HELP_PAGE:
      //   return initializeHelping();
    }
    return CommonsStr();
  }

  @override
  initializeConfig() {
    // SKU = "asvab.week";
    // SKU03 = "asvab.month";
    // SKU02 = "asvab.year";
    // imageUrl =
    // "https://storage.googleapis.com/micro-enigma-235001.appspot.com/asvab/images/";
    //
    // appId = "";
    //
    // adjustToken = "wlj6w8mx979c";
    //
    // appleSanboxKey = "8f4e1ad2fcce4eeda45aa4490b939887";
    //
    // startViewEvent = "g3kubv";
    // startClickEvent = "3nxc0p";
    // trialViewEvent = "7glrxm";
    // trialClickEvent = "f63b9a";
    // purchaseEvent = "x440bi";
    // subscribeEvent = "963vnr";
    // firstSubscribeEvent = "i0v39h";
    // lifeSubscribeEvent = "fhko1p";
    // guideSuccessEvent = "5rknv1";
    // funcSuccessEvent = "i8d9fl";
    // testsViewEvent = "bif55k";
    // testsWelwindowViewEvent = "mpzlc9";
    // revenue_ALLEvent = "5xqdxo";
    // revenue_FirLifeEvent = "c2sa4q";
  }

  @override
  LauncherStr initializeLauncher() {
    var str = LauncherStr();
    str.bottomTitle = S.current.login_with_google_account;
    str.bottomSubTitle = S.current.login_with_facebook_account;
    str.bottomDesTitle = S.current.by_logging_in;
    str.bgColorEnd = "transparent";
    str.bgColorStart = "transparent";
    str.logoDistance = 200;
    return str;
  }

  @override
  CloudPhoneStr initializeCloudPhone() {
    var str = CloudPhoneStr();
    str.title = S.current.all_equipment;
    str.addTitle = S.current.all_devices;
    str.welcome = S.current.welcome;
    str.to_vmos_cloud = S.current.to_vmos_cloud;
    str.try_it_now = S.current.try_it_now;
    return str;
  }

  @override
  DiscoverStr initializeDiscover() {
    var str = DiscoverStr();
    str.tool = S.current.tool;
    str.roboto = S.current.roboto;
    str.bulk_operations = S.current.bulk_operations;
    str.replace_the_device = S.current.replace_the_device;
    str.online_service = S.current.online_service;
    str.hello_ = S.current.hello_;
    str.if_you_customer = S.current.if_you_customer;
    str.advisory_service = S.current.advisory_service;
    return str;
  }

  @override
  DiscoverRootStr initializeDiscoverRoot() {
    var str = DiscoverRootStr();
    str.root = S.current.root;
    str.open_all = S.current.open_all;
    str.id_svip = S.current.id_svip;
    str.svip_pubg = S.current.svip_pubg;
    str.hongkong = S.current.hongkong;
    str.android_9 = S.current.android_9;
    str.four_g_ram = S.current.four_g_ram;
    str.sixteen_rom = S.current.sixteen_rom;
    return str;
  }

  @override
  DiscoverReplaceTheDeviceStr initializeDiscoverReplaceTheDevice() {
    var str = DiscoverReplaceTheDeviceStr();
    str.replace_the_device = S.current.replace_the_device_;
    str.select_replacement_device = S.current.select_replacement_device;
    str.please_select_the_device_to_replace =
        S.current.please_select_the_device_to_replace;
    str.select_package_type = S.current.select_package_type;
    str.please_select_a_package_type = S.current.please_select_a_package_type;
    str.replacement_equipment_rules = S.current.replacement_equipment_rules;
    str.using_the_device_replacement = S.current.using_the_device_replacement;
    str.replace_now = S.current.replace_now;
    return str;
  }

  @override
  DiscoverReplaceTheDeviceOperationStr
      initializeDiscoverReplaceTheDeviceOperation() {
    var str = DiscoverReplaceTheDeviceOperationStr();
    str.title = S.current.select_replacement_device;
    str.select_all = S.current.select_all;
    str.confirm = S.current.confirm;
    return str;
  }

  @override
  DiscoverRootStr initializeDiscoverReplaceTheDeviceSelectPackage() {
    var str = DiscoverRootStr();
    str.root = S.current.select_package_type;
    str.open_all = S.current.confirm;
    str.id_svip = S.current.id_svip;
    str.svip_pubg = S.current.svip_pubg;
    str.hongkong = S.current.hongkong;
    str.android_9 = S.current.android_9;
    str.four_g_ram = S.current.four_g_ram;
    str.sixteen_rom = S.current.sixteen_rom;
    return str;
  }

  @override
  DiscoverBulkOperationsStr initializeDiscoverBulkOperations() {
    var str = DiscoverBulkOperationsStr();
    str.bulk_operations = S.current.bulk_operations;
    str.no_data = S.current.no_data;
    str.select_all = S.current.select_all;
    str.restore_factory = S.current.restore_factory;
    str.reset = S.current.reset;
    return str;
  }

  @override
  MyPageStr initializeMyPage() {
    var str = MyPageStr();
    str.xiaosuan_ue = S.current.xiaosuan_ue;
    str.id_83256 = S.current.id_83256;
    str.wallet = S.current.wallet;
    str.order = S.current.order;
    str.my_device = S.current.my_device;
    str.install = S.current.install;
    return str;
  }

  @override
  WalletPageStr initializeWalletPage() {
    var str = WalletPageStr();
    str.wallet = S.current.wallet;
    str.wallet_balance = S.current.wallet_balance;
    str.recharge_amount = S.current.recharge_amount;
    str.recharge = S.current.recharge;
    str.problems_with_charging = S.current.problems_with_charging;
    return str;
  }

  @override
  MyDevicesPageStr initializeMyDevicesPage() {
    var str = MyDevicesPageStr();
    str.my_device = S.current.my_device;
    str.please_enter_a = S.current.please_enter_a;
    str.time_remaining_233 = S.current.time_remaining_233;
    str.renewal = S.current.renewal;
    str.id_svip = S.current.id_svip;
    str.svip_pubg = S.current.svip_pubg;
    str.hongkong = S.current.hongkong;
    str.android_9 = S.current.android_9;
    str.four_g_ram = S.current.four_g_ram;
    str.sixteen_rom = S.current.sixteen_rom;
    return str;
  }

  @override
  InstallPageStr initializeInstallPage() {
    var str = InstallPageStr();
    str.install = S.current.install;
    str.play_device_sound = S.current.play_device_sound;
    str.device_pre_clar = S.current.device_pre_clar;
    str.clear_cache = S.current.clear_cache;
    str.check_for_updates = S.current.check_for_updates;
    str.about_vmos_cloud = S.current.about_vmos_cloud;
    str.sign_out = S.current.sign_out;
    return str;
  }

  @override
  AboutMePageStr initializeAboutMePage() {
    var str = AboutMePageStr();
    str.about_vmos_cloud = S.current.about_vmos_cloud;
    str.vmos_cloud_phone = S.current.vmos_cloud_phone;
    str.version_1_3_1 = S.current.version_1_3_1;
    str.privacy_policy = S.current.privacy_policy;
    str.user_agreement = S.current.user_agreement;
    str.copyright_2022 = S.current.copyright_2022;
    return str;
  }

  @override
  MyOrderMainPageStr initializeMyOrderMainPage() {
    var str = MyOrderMainPageStr();
    str.recharge_bill = S.current.recharge_bill;
    str.recharge_date = S.current.recharge_date;
    return str;
  }

  @override
  AddCloudPhoneStr initializeAddCloudPhonePage() {
    var str = AddCloudPhoneStr();
    str.add_cloud_phone = S.current.add_cloud_phone;
    str.novice_experience = S.current.novice_experience;
    str.luxury_enjoy_the = S.current.luxury_enjoy_the;
    str.svip_365_day = S.current.svip_365_day;
    str.saved_1_7 = S.current.saved_1_7;
    str.more_packages = S.current.more_packages;
    str.buy = S.current.buy;
    str.total_11 = S.current.total_11;
    return str;
  }

  @override
  NoviceExperienceMainStr initializeNoviceExperienceMainPage() {
    var str = NoviceExperienceMainStr();
    str.novice_experience = S.current.novice_experience;
    str.game_recommeded_models = S.current.game_recommeded_models;
    str.one_day_novice = S.current.one_day_novice;
    str.on_hook_recommend = S.current.on_hook_recommend;
    str.kvip_30_days = S.current.kvip_30_days;
    str.exclusive_plan_new = S.current.exclusive_plan_new;
    return str;
  }

  guideColors(GuideItem item) {
    item.guideTitleColor = "#1F1F56";
    item.guidesubTitleColor = "#1F1F56";
    item.guideTitleNightColor = "#FFFFFF";
    item.guidesubTitleNightColor = "#FFFFFF";
    item.guideDescColor = "#5D6373";
    item.guideNightColor = "#B3B3B3";
  }

  @override
  GuideStr initializeGuide() {
    var str = GuideStr();
    str.indicatorColor = "#218DF7";

    str.list = [];
    //OnePage
    GuideItem item01 = GuideItem();
    item01.guideTitle = "Pass the\n";
    item01.guideColorTitle = "ASVAB® Exam";
    guideColors(item01);

    item01.guideDes = "Prepare for the ASVAB Exam with questions that \n"
        "accurately cover the scope requirements of the \n"
        "ASVAB Exam (questions updated in 2022). Helping \n"
        "you pass the exam with a high score!";
    item01.guideImage = "guideFirst.png";
    item01.guideColor = "#00FFAC";
    str.list.add(item01);
    //TwoPage
    GuideItem item02 = GuideItem();
    item02.guideTitle = "Efficient Test Mode";
    item02.guideDes = "Based on the practice, the system automatically \n"
        "categorizes the questions done and helps you \n"
        "review them at the right time to improve your \n"
        "learning efficiency.";
    item02.guideImage = "guideSecond.png";
    guideColors(item02);

    str.list.add(item02);
    //ThreePage
    GuideItem item03 = GuideItem();
    item03.guideTitle = "Take Tests Anytime \nand Anywhere";
    item03.guideDes = "Put the test in your pocket! When you want to \n"
        "take a test, just take out your phone and practice \n"
        "thousands of questions with a single click.";
    item03.guideImage = "guideThird.png";
    guideColors(item03);

    str.list.add(item03);
    //ThreePage
    GuideItem item04 = GuideItem();
    item04.guideTitle = "User-friendly and \nSimple Interface";
    item04.guideDes =
        "Start your test preparation easily without \nstudying. You too can pass the test with a high \nscore!";
    item04.guideImage = "guideFourth.png";
    guideColors(item04);

    str.list.add(item04);
    return str;
  }

  @override
  BillingStr initializeBilling() {
    var str = BillingStr();
    str.title = "Pass the \nASVAB® Exam";

    str.billingWeekName = "Weekly Subscription";
    str.billingDiscount = "55% OFF";
    str.billingWeekPrice = "\$10.99";
    str.Billed = "Billed";
    str.every_week = "every week";

    str.billingWeekMostPopular = "\n\nMOST POPULAR";
    str.billingYearName = "Lifetime";
    str.billingIllustrate =
        "\n\nGET ALL PREMIUM FEATURES. \nLIMITED TIME OFFER.";
    str.billingFoot =
        "Your iTunes account will be charged immediately. You can edit and cancel your subscription from the settings tab.";

    str.des = [];
    str.des.add("1722+ Questions & Explanations");
    str.des.add("Study and testing in all 9 subjects");
    str.des.add("Unlock all advanced study modes");
    str.des.add(
        "Use the effective tomato study\nmethod to improve your pass rate");
    str.des.add("Pass Guaranteed");
    str.termContent = "https://sites.google.com/view/quarkgame";
    str.privacyContent = "https://sites.google.com/view/quark-game";

    str.loadingText = "Just a moment\nYour request is being processed...";

    str.topDistance = 97;

    str.bgImg = "placeholderIcon.png";
    str.bgNightImg = "placeholderIcon.png";

    str.titleColor = "#218DF7";
    str.titleNightColor = "#218DF7";

    str.itemBg = "#F2FFFF";
    str.itemNightBg = "#232828";

    str.itemDesBg = "#525252";
    str.itemNightBg = "#ffffff";

    str.every_week = "every week";
    str.once_time = "every year";
    str.every_month = "every month";

    return str;
  }

  @override
  HomeStr initializeHome() {
    var str = HomeStr();
    str.title = "ASVAB® EXAM";

    str.subtitle = "Get Real Estate Certification License";
    str.questionsHasBeenUpdates =
        "* Questions has been updated to the latest version (Oct. 2021)";

    str.tipsColor = "#218DF7";
    str.controllTitle =
        "           The ASVAB is a timed, multi-aptitude test, which is given at more than 14,000 schools and Military Entrance Processing Stations (MEPS) nationwide and is developed and maintained by the Defense Department (DoD). The ASVAB helps the DoD not just determine whether you are a good fit to join the service, but also which service branch you might be best for and even what military jobs you can hold after you finish basic training or boot camp. The better your ASVAB score, the broader your options.";
    str.switchColor = "#218DF7";
    str.topBgItemColor = "#ffffff";
    str.topBgItemNightColor = "#202022";
    str.topSmallBgItemColor = "#F7F7F7";
    str.topSmallBgItemNightColor = "#2C2C2E";
    str.topItemTextColor = "#15282B";
    str.topItemSmallTextColor = "#273D58";
    str.topItemTextNightColor = "#EBEBEB";
    return str;
  }
}
