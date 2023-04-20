import 'package:flutter/services.dart';

class BranchEvent {
  static const MethodChannel _channel = MethodChannel("branch_event");

  static Future<void> event(String event) async {
    Map<String, dynamic> initValues = {
      "eventName": event,
    };

    try {
      var result = await _channel.invokeMethod("things", initValues);
    } catch (e) {
      // e as PlatformException;
      // print(e.message);
      return;
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
}
