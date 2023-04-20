import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'gamebox_plugin_platform_interface.dart';

/// An implementation of [GameboxPluginPlatform] that uses method channels.
class MethodChannelGameboxPlugin extends GameboxPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('gamebox_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
