class ApiUrl {
  //base Url
  // static const String baseUrl = "http://192.168.3.16:8888/quiz/1.0";//测试
  // static const String baseUrl = "http://3.21.207.46/quiz/1.0"; //测试

  static const String preHeadUrl = "xs/v1";
  static const String baseUrl = "https://zxy.v8box.cn/$preHeadUrl"; //掌芯云正式
  // static const String baseUrl =
  //     "http://platform.vmos.pro:5566/$preHeadUrl"; //掌芯云测试

  static const String imgUrl = "https://zxy.v8box.cn/"; //掌芯云正式头像
  // static const String baseUrl = "http://192.168.1.111/xs/v1"; //掌芯云本地

  static const String serviceUrl =
      "https://zxy.v8box.cn/policy/service/#/"; //TODO:服务条款
  static const String privacyUrl =
      "https://zxy.v8box.cn/policy/privacy/#/"; //TODO:隐私政策
  ///TODO:兔小巢 反馈 https://txc.qq.com/dashboard/products/409853
  static const String rabbitBack = "https://support.qq.com/product/409853";

  //登录接口
  static const String getLogin = "$baseUrl/anon/login";

  //验证码登录接口
  static const String geVerifyCodeLogin = "$baseUrl/anon/verifyCodeLogin";

  //注册接口
  static const String getRegister = "$baseUrl/anon/register";

  //手机号验证接口
  static const String getCheckPhone = "$baseUrl/anon/checkPhone";

  //修改密码接口
  static const String getChangPwd = "$baseUrl/anon/changPwd";

  //获取云手机配置和套餐信息表
  static const String getCloudConfigInfo = "$baseUrl/config/list";

  //支付宝充值接口
  static const String getAlipay = "$baseUrl/alipay/recharge";

  //钱包余额查询接口
  static const String getWalletSaveMoney = "$baseUrl/wallet/query";

  //我的设备充值订单查询接口
  static const String getOrderPackageQuery = "$baseUrl/orderPackage/query";

  //我的钱包充值订单查询接口
  static const String getOrderRechargeQuery = "$baseUrl/orderRecharge/query";

  //钱包购买设备接口
  static const String getOrderWalletBuy = "$baseUrl/machine/walletBuy";

  //已购买主机查询接口
  static const String getBuyedMachine = "$baseUrl/machine/query";

  //支付宝购买设备接口
  static const String getAlipayBuyedMachine = "$baseUrl/machine/alipayBuy";

  //分组添加接口
  static const String getGroupCreate = "$baseUrl/group/create";

  //分组查询接口
  static const String getGroupQuery = "$baseUrl/group/query";

  //分组删除接口
  static const String getGroupDelete = "$baseUrl/group/delete";

  //分组修改接口
  static const String getGroupUpdate = "$baseUrl/group/update";

  //云手机绑定分组接口
  static const String getGroupBind = "$baseUrl/machine/bindGroup";

  //云手机解绑接口
  static const String getGroupUnbind = "$baseUrl/machine/unbindGroup";

  //启动UI界面查询接口
  static const String getStartUpQuery = "$baseUrl/config/startupQuery";

  //获取友盟手机号接口
  static const String getQueryMobile = "$baseUrl/anon/queryMobile";

  //获取免费主机ui接口
  static const String getConfigFreeUiData = "$baseUrl/config/freeUiData";

  //获取当前用户免费主机信息接口
  static const String getMachineFreeQuery = "$baseUrl/machineFree/query";

  //立即体验获取免费主机接口
  static const String getMachineFree_Use = "$baseUrl/machineFree/use";

  //取消排队接口
  static const String getMachineFreeCancel = "$baseUrl/machineFree/cancelQueue";

  //修改昵称
  static const String getModifyName = "$baseUrl/auth/updateUn";

  //上传用户头像接口
  static const String getFileUpload = "$baseUrl/auth/uploadImg";

  //激活码获取接口
  static const String getActivateCode = "$baseUrl/activation/activateUse";

  //重命名获取接口
  static const String getRename = "$baseUrl/machineFree/rename";

//激活码设备获取接口
  static const String getActivateMachine =
      "$baseUrl/activation/getActivateMachine";

  //QQ号获取接口
  static const String getQQCode = "$baseUrl/activation/qq";

  //题库更新接口
  static const String getDataUpdate = "$baseUrl/{subject}/update";

  //题库版本验证接口
  static const String getDataVersionUpdate = "$baseUrl/{subject}/version";
}
