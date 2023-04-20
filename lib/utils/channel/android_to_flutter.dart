import 'package:flutter/services.dart';

class AndroidToFlutter {
  //1.创建Flutter端的BasicMessageChannel
  static BasicMessageChannel<String> basicMessageChannel =
      const BasicMessageChannel(
          'com.geekholt.hybird/TestBasicMessageChannel', StringCodec());

  static Future<String>? obtainMessage(dynamic callback) {
    //2.接收来自Native的消息，并向Native回复
    basicMessageChannel.setMessageHandler(
      (message) async {
        return await Future.delayed(const Duration(milliseconds: 0), () {
          callback(message);
          return "收到Native的消息：$message";
        });
      },
    );
    return null;
  }

// static void sendMessage(value) async {
//   String? response = await basicMessageChannel.send(value);
//   print("收到Native的消息回复：${response}");
// }
}
