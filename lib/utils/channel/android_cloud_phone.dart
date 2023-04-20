import 'package:flutter/services.dart';

class CloudMobileEvent {
  static const MethodChannel _channel = MethodChannel("cloud_phone_event");

  static MethodChannel get channel => _channel;

  static Future<dynamic> event(
    String event,
    String cloudVMID,
    String screenHot, {
    int cloudGroupId = 0,
    String install_apk = "",
    bool isOpenAudio = true,
    bool isRoot = true,
    String cloudVMName = "",
    String userId = "",
  }) async {
    Map<String, dynamic> initValues = {
      "eventName": event,
      "cloudVMID": cloudVMID,
      "screenHot": screenHot,
      "cloudGroupId": cloudGroupId,
      "install_apk": install_apk,
      "isOpenAudio": isOpenAudio,
      "cloudVMName": cloudVMName,
      "isRoot": isRoot,
      "userId": userId,
    };

    try {
      var result = await _channel.invokeMethod("things", initValues);
      return result;
    } catch (e) {
      // e as PlatformException;
      // print(e.message);
      return;
    }
  }

  static Future<String?> screenHot(String event) async {
    Map<String, dynamic> initValues = {
      "eventName": event,
    };

    try {
      var result = await _channel.invokeMethod("screenHot", initValues);
      return result;
    } catch (e) {
      // e as PlatformException;
      // print(e.message);
      return null;
    }
  }

  static Future<void> purchaseEvent() async {
    Map<String, dynamic> initValues = {};
    try {
      var result = await _channel.invokeMethod("purchaseThings", initValues);
    } catch (e) {
      e as PlatformException;
      print(e.message);
      return;
    }
  }

  static Future<void> subscribeEvent() async {
    Map<String, dynamic> initValues = {};
    try {
      var result = await _channel.invokeMethod("subscribeThings", initValues);
    } catch (e) {
      e as PlatformException;
      print(e.message);
      return;
    }
  }

  ///TODO:是否返回最初activity
  static Future<void> isBackToRootEvent(bool isBackToRootEvent) async {
    Map<String, dynamic> initValues = {
      "isBackToRootEvent": isBackToRootEvent,
    };
    try {
      var result = await _channel.invokeMethod("isBackToRootEvent", initValues);
    } catch (e) {
      e as PlatformException;
      print(e.message);
      return;
    }
  }
}
