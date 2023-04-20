// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `云手机`
  String get cloud_phone {
    return Intl.message(
      '云手机',
      name: 'cloud_phone',
      desc: '',
      args: [],
    );
  }

  /// `发现`
  String get discover {
    return Intl.message(
      '发现',
      name: 'discover',
      desc: '',
      args: [],
    );
  }

  /// `我的`
  String get my {
    return Intl.message(
      '我的',
      name: 'my',
      desc: '',
      args: [],
    );
  }

  /// `Login with Google account`
  String get login_with_google_account {
    return Intl.message(
      'Login with Google account',
      name: 'login_with_google_account',
      desc: '',
      args: [],
    );
  }

  /// `Login with Facebook account`
  String get login_with_facebook_account {
    return Intl.message(
      'Login with Facebook account',
      name: 'login_with_facebook_account',
      desc: '',
      args: [],
    );
  }

  /// `By logging in, you agree to the User Agreement and\nPrivacy Policy`
  String get by_logging_in {
    return Intl.message(
      'By logging in, you agree to the User Agreement and\nPrivacy Policy',
      name: 'by_logging_in',
      desc: '',
      args: [],
    );
  }

  /// `全部设备`
  String get all_equipment {
    return Intl.message(
      '全部设备',
      name: 'all_equipment',
      desc: '',
      args: [],
    );
  }

  /// `添加设备`
  String get all_devices {
    return Intl.message(
      '添加设备',
      name: 'all_devices',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get welcome {
    return Intl.message(
      '',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `欢迎使用掌芯云`
  String get to_vmos_cloud {
    return Intl.message(
      '欢迎使用掌芯云',
      name: 'to_vmos_cloud',
      desc: '',
      args: [],
    );
  }

  /// `请输入分组名称`
  String get please_input_file_name {
    return Intl.message(
      '请输入分组名称',
      name: 'please_input_file_name',
      desc: '',
      args: [],
    );
  }

  /// `马上体验`
  String get try_it_now {
    return Intl.message(
      '马上体验',
      name: 'try_it_now',
      desc: '',
      args: [],
    );
  }

  /// `选择设备`
  String get select_devices {
    return Intl.message(
      '选择设备',
      name: 'select_devices',
      desc: '',
      args: [],
    );
  }

  /// `退出分组`
  String get exit_group {
    return Intl.message(
      '退出分组',
      name: 'exit_group',
      desc: '',
      args: [],
    );
  }

  /// `分组改名`
  String get group_rename {
    return Intl.message(
      '分组改名',
      name: 'group_rename',
      desc: '',
      args: [],
    );
  }

  /// `删除分组`
  String get delete_group {
    return Intl.message(
      '删除分组',
      name: 'delete_group',
      desc: '',
      args: [],
    );
  }

  /// `提示`
  String get tip_des {
    return Intl.message(
      '提示',
      name: 'tip_des',
      desc: '',
      args: [],
    );
  }

  /// `删除分组操作仅删除该分类，不会删除设备，\n是否继续？`
  String get delete_des {
    return Intl.message(
      '删除分组操作仅删除该分类，不会删除设备，\n是否继续？',
      name: 'delete_des',
      desc: '',
      args: [],
    );
  }

  /// `Tool`
  String get tool {
    return Intl.message(
      'Tool',
      name: 'tool',
      desc: '',
      args: [],
    );
  }

  /// `Roboto`
  String get roboto {
    return Intl.message(
      'Roboto',
      name: 'roboto',
      desc: '',
      args: [],
    );
  }

  /// `Bulk operations`
  String get bulk_operations {
    return Intl.message(
      'Bulk operations',
      name: 'bulk_operations',
      desc: '',
      args: [],
    );
  }

  /// `Replace the \ndevice`
  String get replace_the_device {
    return Intl.message(
      'Replace the \ndevice',
      name: 'replace_the_device',
      desc: '',
      args: [],
    );
  }

  /// `Online Service`
  String get online_service {
    return Intl.message(
      'Online Service',
      name: 'online_service',
      desc: '',
      args: [],
    );
  }

  /// `钱包充值`
  String get wallet_recharge {
    return Intl.message(
      '钱包充值',
      name: 'wallet_recharge',
      desc: '',
      args: [],
    );
  }

  /// `自定义金额`
  String get custom_money {
    return Intl.message(
      '自定义金额',
      name: 'custom_money',
      desc: '',
      args: [],
    );
  }

  /// `支付宝`
  String get alipay {
    return Intl.message(
      '支付宝',
      name: 'alipay',
      desc: '',
      args: [],
    );
  }

  /// `隐私政策`
  String get privacy_policy {
    return Intl.message(
      '隐私政策',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `服务条款`
  String get user_agreement {
    return Intl.message(
      '服务条款',
      name: 'user_agreement',
      desc: '',
      args: [],
    );
  }

  /// `Copyright 2019-2022 掌芯云. All Rights Reserved.`
  String get copyright_2022 {
    return Intl.message(
      'Copyright 2019-2022 掌芯云. All Rights Reserved.',
      name: 'copyright_2022',
      desc: '',
      args: [],
    );
  }

  /// `Hello!`
  String get hello_ {
    return Intl.message(
      'Hello!',
      name: 'hello_',
      desc: '',
      args: [],
    );
  }

  /// `您确定要退出吗？`
  String get are_you_sure {
    return Intl.message(
      '您确定要退出吗？',
      name: 'are_you_sure',
      desc: '',
      args: [],
    );
  }

  /// `VMOS Cloud Phone`
  String get vmos_cloud_phone {
    return Intl.message(
      'VMOS Cloud Phone',
      name: 'vmos_cloud_phone',
      desc: '',
      args: [],
    );
  }

  /// `版本号 1.0.0`
  String get version_1_3_1 {
    return Intl.message(
      '版本号 1.0.0',
      name: 'version_1_3_1',
      desc: '',
      args: [],
    );
  }

  /// `Keep logged in`
  String get keep_logged_in {
    return Intl.message(
      'Keep logged in',
      name: 'keep_logged_in',
      desc: '',
      args: [],
    );
  }

  /// `取消`
  String get quit {
    return Intl.message(
      '取消',
      name: 'quit',
      desc: '',
      args: [],
    );
  }

  /// `充值记录`
  String get recharge_bill {
    return Intl.message(
      '充值记录',
      name: 'recharge_bill',
      desc: '',
      args: [],
    );
  }

  /// `2022.04.01 12:31:59`
  String get recharge_date {
    return Intl.message(
      '2022.04.01 12:31:59',
      name: 'recharge_date',
      desc: '',
      args: [],
    );
  }

  /// `If you need help, please click to consult \ncustomer service`
  String get if_you_customer {
    return Intl.message(
      'If you need help, please click to consult \ncustomer service',
      name: 'if_you_customer',
      desc: '',
      args: [],
    );
  }

  /// `Advisory Service`
  String get advisory_service {
    return Intl.message(
      'Advisory Service',
      name: 'advisory_service',
      desc: '',
      args: [],
    );
  }

  /// `You do not have a recharge bill\n go to recharge!\n`
  String get you_do_not {
    return Intl.message(
      'You do not have a recharge bill\n go to recharge!\n',
      name: 'you_do_not',
      desc: '',
      args: [],
    );
  }

  /// `Root`
  String get root {
    return Intl.message(
      'Root',
      name: 'root',
      desc: '',
      args: [],
    );
  }

  /// `Open All`
  String get open_all {
    return Intl.message(
      'Open All',
      name: 'open_all',
      desc: '',
      args: [],
    );
  }

  /// `ID:SVIP001`
  String get id_svip {
    return Intl.message(
      'ID:SVIP001',
      name: 'id_svip',
      desc: '',
      args: [],
    );
  }

  /// `SVIP`
  String get svip {
    return Intl.message(
      'SVIP',
      name: 'svip',
      desc: '',
      args: [],
    );
  }

  /// `全部`
  String get all {
    return Intl.message(
      '全部',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `BVIP`
  String get bvip {
    return Intl.message(
      'BVIP',
      name: 'bvip',
      desc: '',
      args: [],
    );
  }

  /// `KVIP`
  String get kvip {
    return Intl.message(
      'KVIP',
      name: 'kvip',
      desc: '',
      args: [],
    );
  }

  /// `SVIP-PUBG MOBILE`
  String get svip_pubg {
    return Intl.message(
      'SVIP-PUBG MOBILE',
      name: 'svip_pubg',
      desc: '',
      args: [],
    );
  }

  /// `香港`
  String get hongkong {
    return Intl.message(
      '香港',
      name: 'hongkong',
      desc: '',
      args: [],
    );
  }

  /// `安卓 9.0`
  String get android_9 {
    return Intl.message(
      '安卓 9.0',
      name: 'android_9',
      desc: '',
      args: [],
    );
  }

  /// `4G 运存`
  String get four_g_ram {
    return Intl.message(
      '4G 运存',
      name: 'four_g_ram',
      desc: '',
      args: [],
    );
  }

  /// `16G 存储`
  String get sixteen_rom {
    return Intl.message(
      '16G 存储',
      name: 'sixteen_rom',
      desc: '',
      args: [],
    );
  }

  /// `No Data`
  String get no_data {
    return Intl.message(
      'No Data',
      name: 'no_data',
      desc: '',
      args: [],
    );
  }

  /// `Select all`
  String get select_all {
    return Intl.message(
      'Select all',
      name: 'select_all',
      desc: '',
      args: [],
    );
  }

  /// `Restore Factory`
  String get restore_factory {
    return Intl.message(
      'Restore Factory',
      name: 'restore_factory',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Replace the device`
  String get replace_the_device_ {
    return Intl.message(
      'Replace the device',
      name: 'replace_the_device_',
      desc: '',
      args: [],
    );
  }

  /// `Select replacement device`
  String get select_replacement_device {
    return Intl.message(
      'Select replacement device',
      name: 'select_replacement_device',
      desc: '',
      args: [],
    );
  }

  /// `Please select the device to replace`
  String get please_select_the_device_to_replace {
    return Intl.message(
      'Please select the device to replace',
      name: 'please_select_the_device_to_replace',
      desc: '',
      args: [],
    );
  }

  /// `Select package type`
  String get select_package_type {
    return Intl.message(
      'Select package type',
      name: 'select_package_type',
      desc: '',
      args: [],
    );
  }

  /// `Please select a package type`
  String get please_select_a_package_type {
    return Intl.message(
      'Please select a package type',
      name: 'please_select_a_package_type',
      desc: '',
      args: [],
    );
  }

  /// `Replacement equipment rules:`
  String get replacement_equipment_rules {
    return Intl.message(
      'Replacement equipment rules:',
      name: 'replacement_equipment_rules',
      desc: '',
      args: [],
    );
  }

  /// `1. Using the device replacement function, the remaining time of the device must be greater than one hour\n2. Support cloud phone replacement of different package types\n3. For exchange between different package types, some need to pay the difference according to the package value\n4. Each device of the same device type can be replaced for free once per hour\n5. After the replacement is completed, the remaining time of the device remains unchanged\n6. After the device is replaced, the data information of the original device will be cleared`
  String get using_the_device_replacement {
    return Intl.message(
      '1. Using the device replacement function, the remaining time of the device must be greater than one hour\n2. Support cloud phone replacement of different package types\n3. For exchange between different package types, some need to pay the difference according to the package value\n4. Each device of the same device type can be replaced for free once per hour\n5. After the replacement is completed, the remaining time of the device remains unchanged\n6. After the device is replaced, the data information of the original device will be cleared',
      name: 'using_the_device_replacement',
      desc: '',
      args: [],
    );
  }

  /// `Replace Now`
  String get replace_now {
    return Intl.message(
      'Replace Now',
      name: 'replace_now',
      desc: '',
      args: [],
    );
  }

  /// `XiaosuanUE`
  String get xiaosuan_ue {
    return Intl.message(
      'XiaosuanUE',
      name: 'xiaosuan_ue',
      desc: '',
      args: [],
    );
  }

  /// `ID:83256892357892`
  String get id_83256 {
    return Intl.message(
      'ID:83256892357892',
      name: 'id_83256',
      desc: '',
      args: [],
    );
  }

  /// `我的钱包`
  String get wallet {
    return Intl.message(
      '我的钱包',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `我的订单`
  String get order {
    return Intl.message(
      '我的订单',
      name: 'order',
      desc: '',
      args: [],
    );
  }

  /// `我的设备`
  String get my_device {
    return Intl.message(
      '我的设备',
      name: 'my_device',
      desc: '',
      args: [],
    );
  }

  /// `请输入设备名或设备ID`
  String get please_enter_a {
    return Intl.message(
      '请输入设备名或设备ID',
      name: 'please_enter_a',
      desc: '',
      args: [],
    );
  }

  /// `Time remaining: 233 days`
  String get time_remaining_233 {
    return Intl.message(
      'Time remaining: 233 days',
      name: 'time_remaining_233',
      desc: '',
      args: [],
    );
  }

  /// `续费`
  String get renewal {
    return Intl.message(
      '续费',
      name: 'renewal',
      desc: '',
      args: [],
    );
  }

  /// `设置`
  String get install {
    return Intl.message(
      '设置',
      name: 'install',
      desc: '',
      args: [],
    );
  }

  /// `云机设置`
  String get install_ {
    return Intl.message(
      '云机设置',
      name: 'install_',
      desc: '',
      args: [],
    );
  }

  /// `播放设备声音`
  String get play_device_sound {
    return Intl.message(
      '播放设备声音',
      name: 'play_device_sound',
      desc: '',
      args: [],
    );
  }

  /// `设备预览图清晰度`
  String get device_pre_clar {
    return Intl.message(
      '设备预览图清晰度',
      name: 'device_pre_clar',
      desc: '',
      args: [],
    );
  }

  /// `清理缓存`
  String get clear_cache {
    return Intl.message(
      '清理缓存',
      name: 'clear_cache',
      desc: '',
      args: [],
    );
  }

  /// `检查更新`
  String get check_for_updates {
    return Intl.message(
      '检查更新',
      name: 'check_for_updates',
      desc: '',
      args: [],
    );
  }

  /// `关于掌芯云`
  String get about_vmos_cloud {
    return Intl.message(
      '关于掌芯云',
      name: 'about_vmos_cloud',
      desc: '',
      args: [],
    );
  }

  /// `退出登录`
  String get sign_out {
    return Intl.message(
      '退出登录',
      name: 'sign_out',
      desc: '',
      args: [],
    );
  }

  /// `普通`
  String get ordinary {
    return Intl.message(
      '普通',
      name: 'ordinary',
      desc: '',
      args: [],
    );
  }

  /// `高清`
  String get hd {
    return Intl.message(
      '高清',
      name: 'hd',
      desc: '',
      args: [],
    );
  }

  /// `检测到新版本`
  String get new_version_detected {
    return Intl.message(
      '检测到新版本',
      name: 'new_version_detected',
      desc: '',
      args: [],
    );
  }

  /// `版本号: V 1.3.1`
  String get version_number_1 {
    return Intl.message(
      '版本号: V 1.3.1',
      name: 'version_number_1',
      desc: '',
      args: [],
    );
  }

  /// `更新内容：\n1. 修复了没有bug的bug；\n2.增加了一大堆付费功能。`
  String get update_content {
    return Intl.message(
      '更新内容：\n1. 修复了没有bug的bug；\n2.增加了一大堆付费功能。',
      name: 'update_content',
      desc: '',
      args: [],
    );
  }

  /// `立刻更新`
  String get update_now {
    return Intl.message(
      '立刻更新',
      name: 'update_now',
      desc: '',
      args: [],
    );
  }

  /// `下次再说`
  String get say_next_time {
    return Intl.message(
      '下次再说',
      name: 'say_next_time',
      desc: '',
      args: [],
    );
  }

  /// `钱包余额:`
  String get wallet_balance {
    return Intl.message(
      '钱包余额:',
      name: 'wallet_balance',
      desc: '',
      args: [],
    );
  }

  /// `充值金额：`
  String get recharge_amount {
    return Intl.message(
      '充值金额：',
      name: 'recharge_amount',
      desc: '',
      args: [],
    );
  }

  /// `充值`
  String get recharge {
    return Intl.message(
      '充值',
      name: 'recharge',
      desc: '',
      args: [],
    );
  }

  /// `新增云手机`
  String get add_cloud_phone {
    return Intl.message(
      '新增云手机',
      name: 'add_cloud_phone',
      desc: '',
      args: [],
    );
  }

  /// `钱包余额不足，是否前往充值？`
  String get wallet_lost {
    return Intl.message(
      '钱包余额不足，是否前往充值？',
      name: 'wallet_lost',
      desc: '',
      args: [],
    );
  }

  /// `Novice experience`
  String get novice_experience {
    return Intl.message(
      'Novice experience',
      name: 'novice_experience',
      desc: '',
      args: [],
    );
  }

  /// `游戏畅玩，豪华型，性能强`
  String get luxury_enjoy_the {
    return Intl.message(
      '游戏畅玩，豪华型，性能强',
      name: 'luxury_enjoy_the',
      desc: '',
      args: [],
    );
  }

  /// `SVIP 365天卡`
  String get svip_365_day {
    return Intl.message(
      'SVIP 365天卡',
      name: 'svip_365_day',
      desc: '',
      args: [],
    );
  }

  /// `节省：¥15（15%）`
  String get saved_1_7 {
    return Intl.message(
      '节省：¥15（15%）',
      name: 'saved_1_7',
      desc: '',
      args: [],
    );
  }

  /// `More Packages`
  String get more_packages {
    return Intl.message(
      'More Packages',
      name: 'more_packages',
      desc: '',
      args: [],
    );
  }

  /// `Game Recommended Models`
  String get game_recommeded_models {
    return Intl.message(
      'Game Recommended Models',
      name: 'game_recommeded_models',
      desc: '',
      args: [],
    );
  }

  /// `1 day novice experience card`
  String get one_day_novice {
    return Intl.message(
      '1 day novice experience card',
      name: 'one_day_novice',
      desc: '',
      args: [],
    );
  }

  /// `On-hook recommended model`
  String get on_hook_recommend {
    return Intl.message(
      'On-hook recommended model',
      name: 'on_hook_recommend',
      desc: '',
      args: [],
    );
  }

  /// `KVIP 30 days`
  String get kvip_30_days {
    return Intl.message(
      'KVIP 30 days',
      name: 'kvip_30_days',
      desc: '',
      args: [],
    );
  }

  /// `Exclusive plan for new users`
  String get exclusive_plan_new {
    return Intl.message(
      'Exclusive plan for new users',
      name: 'exclusive_plan_new',
      desc: '',
      args: [],
    );
  }

  /// `支付`
  String get buy {
    return Intl.message(
      '支付',
      name: 'buy',
      desc: '',
      args: [],
    );
  }

  /// `支付方式：`
  String get buyType {
    return Intl.message(
      '支付方式：',
      name: 'buyType',
      desc: '',
      args: [],
    );
  }

  /// `Payment method`
  String get payment_method {
    return Intl.message(
      'Payment method',
      name: 'payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Payment`
  String get confirm_payment {
    return Intl.message(
      'Confirm Payment',
      name: 'confirm_payment',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `合计： ¥12.99`
  String get total_11 {
    return Intl.message(
      '合计： ¥12.99',
      name: 'total_11',
      desc: '',
      args: [],
    );
  }

  /// `大型游戏优先，性能强，画面质量好。`
  String get big_game_first {
    return Intl.message(
      '大型游戏优先，性能强，画面质量好。',
      name: 'big_game_first',
      desc: '',
      args: [],
    );
  }

  /// `分组管理`
  String get per_manager {
    return Intl.message(
      '分组管理',
      name: 'per_manager',
      desc: '',
      args: [],
    );
  }

  /// `管理`
  String get manager {
    return Intl.message(
      '管理',
      name: 'manager',
      desc: '',
      args: [],
    );
  }

  /// `新建分组`
  String get create_per_group {
    return Intl.message(
      '新建分组',
      name: 'create_per_group',
      desc: '',
      args: [],
    );
  }

  /// `这里什么都没有哦~`
  String get there_no_anything {
    return Intl.message(
      '这里什么都没有哦~',
      name: 'there_no_anything',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Calendar`
  String get calendar {
    return Intl.message(
      'Calendar',
      name: 'calendar',
      desc: '',
      args: [],
    );
  }

  /// `Problems with charging? contact us`
  String get problems_with_charging {
    return Intl.message(
      'Problems with charging? contact us',
      name: 'problems_with_charging',
      desc: '',
      args: [],
    );
  }

  /// `这里什么都没有哦~`
  String get you_currently_do_not {
    return Intl.message(
      '这里什么都没有哦~',
      name: 'you_currently_do_not',
      desc: '',
      args: [],
    );
  }

  /// `Me`
  String get me {
    return Intl.message(
      'Me',
      name: 'me',
      desc: '',
      args: [],
    );
  }

  /// `March`
  String get march {
    return Intl.message(
      'March',
      name: 'march',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get year {
    return Intl.message(
      'Year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `月经期`
  String get menstrual {
    return Intl.message(
      '月经期',
      name: 'menstrual',
      desc: '',
      args: [],
    );
  }

  /// `预测经期`
  String get forecast {
    return Intl.message(
      '预测经期',
      name: 'forecast',
      desc: '',
      args: [],
    );
  }

  /// `排卵期`
  String get ovulatoryIcon {
    return Intl.message(
      '排卵期',
      name: 'ovulatoryIcon',
      desc: '',
      args: [],
    );
  }

  /// `排卵日`
  String get ovulationdate {
    return Intl.message(
      '排卵日',
      name: 'ovulationdate',
      desc: '',
      args: [],
    );
  }

  /// `TODAY`
  String get todays {
    return Intl.message(
      'TODAY',
      name: 'todays',
      desc: '',
      args: [],
    );
  }

  /// `In Period`
  String get inperiod {
    return Intl.message(
      'In Period',
      name: 'inperiod',
      desc: '',
      args: [],
    );
  }

  /// `流量`
  String get flowText {
    return Intl.message(
      '流量',
      name: 'flowText',
      desc: '',
      args: [],
    );
  }

  /// `痛经`
  String get dysmenorrhea {
    return Intl.message(
      '痛经',
      name: 'dysmenorrhea',
      desc: '',
      args: [],
    );
  }

  /// `症状`
  String get symptom {
    return Intl.message(
      '症状',
      name: 'symptom',
      desc: '',
      args: [],
    );
  }

  /// `性行为和性欲`
  String get sexualityandsexuality {
    return Intl.message(
      '性行为和性欲',
      name: 'sexualityandsexuality',
      desc: '',
      args: [],
    );
  }

  /// `心情`
  String get mood {
    return Intl.message(
      '心情',
      name: 'mood',
      desc: '',
      args: [],
    );
  }

  /// `写日记`
  String get keepadiary {
    return Intl.message(
      '写日记',
      name: 'keepadiary',
      desc: '',
      args: [],
    );
  }

  /// `阴道分泌物`
  String get vaginalsecretion {
    return Intl.message(
      '阴道分泌物',
      name: 'vaginalsecretion',
      desc: '',
      args: [],
    );
  }

  /// `排卵测试`
  String get ovulationtest {
    return Intl.message(
      '排卵测试',
      name: 'ovulationtest',
      desc: '',
      args: [],
    );
  }

  /// `怀孕测试`
  String get pregnancytest {
    return Intl.message(
      '怀孕测试',
      name: 'pregnancytest',
      desc: '',
      args: [],
    );
  }

  /// `运动`
  String get exercise {
    return Intl.message(
      '运动',
      name: 'exercise',
      desc: '',
      args: [],
    );
  }

  /// `口服避孕药`
  String get oralcontraceptive {
    return Intl.message(
      '口服避孕药',
      name: 'oralcontraceptive',
      desc: '',
      args: [],
    );
  }

  /// `YES`
  String get rights {
    return Intl.message(
      'YES',
      name: 'rights',
      desc: '',
      args: [],
    );
  }

  /// `NO`
  String get nos {
    return Intl.message(
      'NO',
      name: 'nos',
      desc: '',
      args: [],
    );
  }

  /// `账号:`
  String get account {
    return Intl.message(
      '账号:',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `请输入手机号`
  String get pleaseInBlank {
    return Intl.message(
      '请输入手机号',
      name: 'pleaseInBlank',
      desc: '',
      args: [],
    );
  }

  /// `密码:`
  String get secert {
    return Intl.message(
      '密码:',
      name: 'secert',
      desc: '',
      args: [],
    );
  }

  /// `请输入8-20位数字+字母的组合`
  String get pleaseSecert {
    return Intl.message(
      '请输入8-20位数字+字母的组合',
      name: 'pleaseSecert',
      desc: '',
      args: [],
    );
  }

  /// `登录`
  String get login {
    return Intl.message(
      '登录',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `账号注册`
  String get accountRegister {
    return Intl.message(
      '账号注册',
      name: 'accountRegister',
      desc: '',
      args: [],
    );
  }

  /// `忘记密码`
  String get forwordPas {
    return Intl.message(
      '忘记密码',
      name: 'forwordPas',
      desc: '',
      args: [],
    );
  }

  /// `登录即表示你同意 `
  String get agreeLogin {
    return Intl.message(
      '登录即表示你同意 ',
      name: 'agreeLogin',
      desc: '',
      args: [],
    );
  }

  /// `服务条款`
  String get userProc {
    return Intl.message(
      '服务条款',
      name: 'userProc',
      desc: '',
      args: [],
    );
  }

  /// `与`
  String get and {
    return Intl.message(
      '与',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `隐私政策`
  String get privacy {
    return Intl.message(
      '隐私政策',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `注册掌芯云账号`
  String get registerAccounts {
    return Intl.message(
      '注册掌芯云账号',
      name: 'registerAccounts',
      desc: '',
      args: [],
    );
  }

  /// `下一步`
  String get nextStep {
    return Intl.message(
      '下一步',
      name: 'nextStep',
      desc: '',
      args: [],
    );
  }

  /// `账号登录掌芯云`
  String get accountLogin {
    return Intl.message(
      '账号登录掌芯云',
      name: 'accountLogin',
      desc: '',
      args: [],
    );
  }

  /// `找回密码`
  String get findPass {
    return Intl.message(
      '找回密码',
      name: 'findPass',
      desc: '',
      args: [],
    );
  }

  /// `发送验证码`
  String get sendVerify {
    return Intl.message(
      '发送验证码',
      name: 'sendVerify',
      desc: '',
      args: [],
    );
  }

  /// `请输入校验码`
  String get pleaseInputCode {
    return Intl.message(
      '请输入校验码',
      name: 'pleaseInputCode',
      desc: '',
      args: [],
    );
  }

  /// `看不清？点击图片换一张`
  String get replacePictureClick {
    return Intl.message(
      '看不清？点击图片换一张',
      name: 'replacePictureClick',
      desc: '',
      args: [],
    );
  }

  /// `请输入上图验证码`
  String get inputVerifyCode {
    return Intl.message(
      '请输入上图验证码',
      name: 'inputVerifyCode',
      desc: '',
      args: [],
    );
  }

  /// `点击确认后，你将收到一个短信验证码`
  String get clickConfirmVerifyCode {
    return Intl.message(
      '点击确认后，你将收到一个短信验证码',
      name: 'clickConfirmVerifyCode',
      desc: '',
      args: [],
    );
  }

  /// `取消`
  String get cancel {
    return Intl.message(
      '取消',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `确定`
  String get confirm {
    return Intl.message(
      '确定',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `确认`
  String get confirm_ {
    return Intl.message(
      '确认',
      name: 'confirm_',
      desc: '',
      args: [],
    );
  }

  /// `重置密码`
  String get resetPasswd {
    return Intl.message(
      '重置密码',
      name: 'resetPasswd',
      desc: '',
      args: [],
    );
  }

  /// `提交`
  String get commitPas {
    return Intl.message(
      '提交',
      name: 'commitPas',
      desc: '',
      args: [],
    );
  }

  /// `请输入验证码`
  String get inputVerifyCodes {
    return Intl.message(
      '请输入验证码',
      name: 'inputVerifyCodes',
      desc: '',
      args: [],
    );
  }

  /// `注册并登录`
  String get registerLogin {
    return Intl.message(
      '注册并登录',
      name: 'registerLogin',
      desc: '',
      args: [],
    );
  }

  /// `秒后可重新获取`
  String get secondObtain {
    return Intl.message(
      '秒后可重新获取',
      name: 'secondObtain',
      desc: '',
      args: [],
    );
  }

  /// `重新获取`
  String get reObtain {
    return Intl.message(
      '重新获取',
      name: 'reObtain',
      desc: '',
      args: [],
    );
  }

  /// `续费`
  String get payContinue {
    return Intl.message(
      '续费',
      name: 'payContinue',
      desc: '',
      args: [],
    );
  }

  /// `设备续费`
  String get devicesPayContinue {
    return Intl.message(
      '设备续费',
      name: 'devicesPayContinue',
      desc: '',
      args: [],
    );
  }

  /// `支付失败`
  String get payFail {
    return Intl.message(
      '支付失败',
      name: 'payFail',
      desc: '',
      args: [],
    );
  }

  /// `支付方式：`
  String get payMethod {
    return Intl.message(
      '支付方式：',
      name: 'payMethod',
      desc: '',
      args: [],
    );
  }

  /// `订单金额(元)：`
  String get orderMoney {
    return Intl.message(
      '订单金额(元)：',
      name: 'orderMoney',
      desc: '',
      args: [],
    );
  }

  /// `重新支付`
  String get rePay {
    return Intl.message(
      '重新支付',
      name: 'rePay',
      desc: '',
      args: [],
    );
  }

  /// `支付取消`
  String get payCancel {
    return Intl.message(
      '支付取消',
      name: 'payCancel',
      desc: '',
      args: [],
    );
  }

  /// `是否继续支付取消操作，取消支付后将返回上\n一界面`
  String get isContinuePay {
    return Intl.message(
      '是否继续支付取消操作，取消支付后将返回上\n一界面',
      name: 'isContinuePay',
      desc: '',
      args: [],
    );
  }

  /// `重置出厂`
  String get resetFactory {
    return Intl.message(
      '重置出厂',
      name: 'resetFactory',
      desc: '',
      args: [],
    );
  }

  /// `重启`
  String get reboot {
    return Intl.message(
      '重启',
      name: 'reboot',
      desc: '',
      args: [],
    );
  }

  /// `关闭`
  String get closeSystem {
    return Intl.message(
      '关闭',
      name: 'closeSystem',
      desc: '',
      args: [],
    );
  }

  /// `进入`
  String get enterSystem {
    return Intl.message(
      '进入',
      name: 'enterSystem',
      desc: '',
      args: [],
    );
  }

  /// `刷新`
  String get refreshSystem {
    return Intl.message(
      '刷新',
      name: 'refreshSystem',
      desc: '',
      args: [],
    );
  }

  /// `重命名`
  String get renameSystem {
    return Intl.message(
      '重命名',
      name: 'renameSystem',
      desc: '',
      args: [],
    );
  }

  /// `续费`
  String get continuePay {
    return Intl.message(
      '续费',
      name: 'continuePay',
      desc: '',
      args: [],
    );
  }

  /// `恢复出厂后将清除该设备内的所有数据，是否\n开始操作？`
  String get restoreFactory {
    return Intl.message(
      '恢复出厂后将清除该设备内的所有数据，是否\n开始操作？',
      name: 'restoreFactory',
      desc: '',
      args: [],
    );
  }

  /// `重启设备预计需要1-3分钟，是否开始重启？`
  String get rebootDevices {
    return Intl.message(
      '重启设备预计需要1-3分钟，是否开始重启？',
      name: 'rebootDevices',
      desc: '',
      args: [],
    );
  }

  /// `关闭操作不会终止该设备的运行项目，是否继续？`
  String get closeOperation {
    return Intl.message(
      '关闭操作不会终止该设备的运行项目，是否继续？',
      name: 'closeOperation',
      desc: '',
      args: [],
    );
  }

  /// `成功恢复出厂`
  String get sucRestore {
    return Intl.message(
      '成功恢复出厂',
      name: 'sucRestore',
      desc: '',
      args: [],
    );
  }

  /// `重启成功`
  String get sucReboot {
    return Intl.message(
      '重启成功',
      name: 'sucReboot',
      desc: '',
      args: [],
    );
  }

  /// `关闭成功`
  String get sucClose {
    return Intl.message(
      '关闭成功',
      name: 'sucClose',
      desc: '',
      args: [],
    );
  }

  /// `请输入重命名`
  String get pleaseInputRename {
    return Intl.message(
      '请输入重命名',
      name: 'pleaseInputRename',
      desc: '',
      args: [],
    );
  }

  /// `设备:`
  String get devices_ {
    return Intl.message(
      '设备:',
      name: 'devices_',
      desc: '',
      args: [],
    );
  }

  /// `我的设备`
  String get myDevices_ {
    return Intl.message(
      '我的设备',
      name: 'myDevices_',
      desc: '',
      args: [],
    );
  }

  /// `个人中心`
  String get personCenter {
    return Intl.message(
      '个人中心',
      name: 'personCenter',
      desc: '',
      args: [],
    );
  }

  /// `账号头像`
  String get accountHead {
    return Intl.message(
      '账号头像',
      name: 'accountHead',
      desc: '',
      args: [],
    );
  }

  /// `账号昵称`
  String get accountName {
    return Intl.message(
      '账号昵称',
      name: 'accountName',
      desc: '',
      args: [],
    );
  }

  /// `账号ID：`
  String get accountId {
    return Intl.message(
      '账号ID：',
      name: 'accountId',
      desc: '',
      args: [],
    );
  }

  /// `复制`
  String get copy {
    return Intl.message(
      '复制',
      name: 'copy',
      desc: '',
      args: [],
    );
  }

  /// `消息中心`
  String get messageCenter {
    return Intl.message(
      '消息中心',
      name: 'messageCenter',
      desc: '',
      args: [],
    );
  }

  /// `掌芯云`
  String get handCloud {
    return Intl.message(
      '掌芯云',
      name: 'handCloud',
      desc: '',
      args: [],
    );
  }

  /// `云手机过期通知`
  String get cloudNotice {
    return Intl.message(
      '云手机过期通知',
      name: 'cloudNotice',
      desc: '',
      args: [],
    );
  }

  /// `您的云手机KVP已经到期，系统已自...`
  String get cloudNoticeStart {
    return Intl.message(
      '您的云手机KVP已经到期，系统已自...',
      name: 'cloudNoticeStart',
      desc: '',
      args: [],
    );
  }

  /// `提示公告`
  String get popTip {
    return Intl.message(
      '提示公告',
      name: 'popTip',
      desc: '',
      args: [],
    );
  }

  /// `近期，有部分用户反馈通过云手机操...`
  String get partUser {
    return Intl.message(
      '近期，有部分用户反馈通过云手机操...',
      name: 'partUser',
      desc: '',
      args: [],
    );
  }

  /// `通知消息`
  String get noticeMessage {
    return Intl.message(
      '通知消息',
      name: 'noticeMessage',
      desc: '',
      args: [],
    );
  }

  /// `系统提示`
  String get systemTip {
    return Intl.message(
      '系统提示',
      name: 'systemTip',
      desc: '',
      args: [],
    );
  }

  /// `近期，有部分用户反馈通过云手机操作云手机使用近期，有部分用户反馈通过云手机操作云手机使用近期，有部分用户反馈通过云手机操作云手机使用近期，有部分用户反馈通过云手机操作云手机使用`
  String get nearTip {
    return Intl.message(
      '近期，有部分用户反馈通过云手机操作云手机使用近期，有部分用户反馈通过云手机操作云手机使用近期，有部分用户反馈通过云手机操作云手机使用近期，有部分用户反馈通过云手机操作云手机使用',
      name: 'nearTip',
      desc: '',
      args: [],
    );
  }

  /// `余额充值`
  String get moneyPay {
    return Intl.message(
      '余额充值',
      name: 'moneyPay',
      desc: '',
      args: [],
    );
  }

  /// `购买成功`
  String get paySuccess {
    return Intl.message(
      '购买成功',
      name: 'paySuccess',
      desc: '',
      args: [],
    );
  }

  /// `剩余:24天16时23分`
  String get lostTime {
    return Intl.message(
      '剩余:24天16时23分',
      name: 'lostTime',
      desc: '',
      args: [],
    );
  }

  /// `退出登录不会影响账号数据，是否继续？`
  String get logoutContinue {
    return Intl.message(
      '退出登录不会影响账号数据，是否继续？',
      name: 'logoutContinue',
      desc: '',
      args: [],
    );
  }

  /// `搜索游戏、应用名称`
  String get search_game_app_name {
    return Intl.message(
      '搜索游戏、应用名称',
      name: 'search_game_app_name',
      desc: '',
      args: [],
    );
  }

  /// `热门游戏`
  String get hot_games {
    return Intl.message(
      '热门游戏',
      name: 'hot_games',
      desc: '',
      args: [],
    );
  }

  /// `应用`
  String get apps {
    return Intl.message(
      '应用',
      name: 'apps',
      desc: '',
      args: [],
    );
  }

  /// `欢迎使用`
  String get welcomeUsed {
    return Intl.message(
      '欢迎使用',
      name: 'welcomeUsed',
      desc: '',
      args: [],
    );
  }

  /// `请登录掌芯云`
  String get pleaseLoginCloud {
    return Intl.message(
      '请登录掌芯云',
      name: 'pleaseLoginCloud',
      desc: '',
      args: [],
    );
  }

  /// `注册`
  String get register {
    return Intl.message(
      '注册',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `点击登录`
  String get clickLogin {
    return Intl.message(
      '点击登录',
      name: 'clickLogin',
      desc: '',
      args: [],
    );
  }

  /// `体验更多精彩内容`
  String get experienceContent {
    return Intl.message(
      '体验更多精彩内容',
      name: 'experienceContent',
      desc: '',
      args: [],
    );
  }

  /// `请登录掌芯云，体验更多精彩内容`
  String get loginExperienceContent {
    return Intl.message(
      '请登录掌芯云，体验更多精彩内容',
      name: 'loginExperienceContent',
      desc: '',
      args: [],
    );
  }

  /// `未完成`
  String get norFinish {
    return Intl.message(
      '未完成',
      name: 'norFinish',
      desc: '',
      args: [],
    );
  }

  /// `钱包`
  String get wallets {
    return Intl.message(
      '钱包',
      name: 'wallets',
      desc: '',
      args: [],
    );
  }

  /// `微信`
  String get weichats {
    return Intl.message(
      '微信',
      name: 'weichats',
      desc: '',
      args: [],
    );
  }

  /// `Andriod8.1 云手机限量供应\n免费尊享体验，嗨玩不限次数`
  String get firstAndroid {
    return Intl.message(
      'Andriod8.1 云手机限量供应\n免费尊享体验，嗨玩不限次数',
      name: 'firstAndroid',
      desc: '',
      args: [],
    );
  }

  /// `快快登录体验吧！`
  String get firstSoFirstLogin {
    return Intl.message(
      '快快登录体验吧！',
      name: 'firstSoFirstLogin',
      desc: '',
      args: [],
    );
  }

  /// `立即体验`
  String get fastEnter {
    return Intl.message(
      '立即体验',
      name: 'fastEnter',
      desc: '',
      args: [],
    );
  }

  /// `验证码:`
  String get verifyCode {
    return Intl.message(
      '验证码:',
      name: 'verifyCode',
      desc: '',
      args: [],
    );
  }

  /// `获取验证码`
  String get getVerifyCode {
    return Intl.message(
      '获取验证码',
      name: 'getVerifyCode',
      desc: '',
      args: [],
    );
  }

  /// `账号密码登录`
  String get loginAccount {
    return Intl.message(
      '账号密码登录',
      name: 'loginAccount',
      desc: '',
      args: [],
    );
  }

  /// `设置密码`
  String get setupPassword {
    return Intl.message(
      '设置密码',
      name: 'setupPassword',
      desc: '',
      args: [],
    );
  }

  /// `确认密码`
  String get confirmPassword {
    return Intl.message(
      '确认密码',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `该账号还未注册，是否前去注册？`
  String get newUserRegister {
    return Intl.message(
      '该账号还未注册，是否前去注册？',
      name: 'newUserRegister',
      desc: '',
      args: [],
    );
  }

  /// `前去注册`
  String get goToRegister {
    return Intl.message(
      '前去注册',
      name: 'goToRegister',
      desc: '',
      args: [],
    );
  }

  /// `验证码登录`
  String get phoneNumberLogin {
    return Intl.message(
      '验证码登录',
      name: 'phoneNumberLogin',
      desc: '',
      args: [],
    );
  }

  /// `掌芯云手机`
  String get cloudPhoneTitle {
    return Intl.message(
      '掌芯云手机',
      name: 'cloudPhoneTitle',
      desc: '',
      args: [],
    );
  }

  /// `试用云手机`
  String get readyEnter {
    return Intl.message(
      '试用云手机',
      name: 'readyEnter',
      desc: '',
      args: [],
    );
  }

  /// `请先同意掌芯云的 服务条款 和 隐私政策`
  String get pleaseAgreeProto {
    return Intl.message(
      '请先同意掌芯云的 服务条款 和 隐私政策',
      name: 'pleaseAgreeProto',
      desc: '',
      args: [],
    );
  }

  /// `一键登录`
  String get oneLogined {
    return Intl.message(
      '一键登录',
      name: 'oneLogined',
      desc: '',
      args: [],
    );
  }

  /// `清理完成`
  String get clearComplete {
    return Intl.message(
      '清理完成',
      name: 'clearComplete',
      desc: '',
      args: [],
    );
  }

  /// `云机试用已到期`
  String get cloudArrive {
    return Intl.message(
      '云机试用已到期',
      name: 'cloudArrive',
      desc: '',
      args: [],
    );
  }

  /// `Root`
  String get isOpenRoot {
    return Intl.message(
      'Root',
      name: 'isOpenRoot',
      desc: '',
      args: [],
    );
  }

  /// `激活码`
  String get activeCode {
    return Intl.message(
      '激活码',
      name: 'activeCode',
      desc: '',
      args: [],
    );
  }

  /// `使用激活码`
  String get useActiveCode {
    return Intl.message(
      '使用激活码',
      name: 'useActiveCode',
      desc: '',
      args: [],
    );
  }

  /// `请输入激活码`
  String get pleaseInputActiveCode {
    return Intl.message(
      '请输入激活码',
      name: 'pleaseInputActiveCode',
      desc: '',
      args: [],
    );
  }

  /// `使用说明：\n\n1.每个激活码只能激活一次；\n\n2.激活码可通过掌芯云官方QQ群内免费获取，您通过非官方渠道获取的激活码，若无法激活，掌芯云概不负责；\n\n3.通过官方渠道可获取7天、3天或1天的云机体验激活码（不同时长激活码的发放依官方渠道实际发放为准）；\n\n4.掌芯云对激活码使用拥有最终解释权。`
  String get activeUseDescript {
    return Intl.message(
      '使用说明：\n\n1.每个激活码只能激活一次；\n\n2.激活码可通过掌芯云官方QQ群内免费获取，您通过非官方渠道获取的激活码，若无法激活，掌芯云概不负责；\n\n3.通过官方渠道可获取7天、3天或1天的云机体验激活码（不同时长激活码的发放依官方渠道实际发放为准）；\n\n4.掌芯云对激活码使用拥有最终解释权。',
      name: 'activeUseDescript',
      desc: '',
      args: [],
    );
  }

  /// `免费获取`
  String get freeObtain {
    return Intl.message(
      '免费获取',
      name: 'freeObtain',
      desc: '',
      args: [],
    );
  }

  /// `帮助反馈`
  String get feedback {
    return Intl.message(
      '帮助反馈',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
