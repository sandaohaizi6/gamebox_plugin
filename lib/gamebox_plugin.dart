
import 'gamebox_plugin_platform_interface.dart';

class GameboxPlugin {
  Future<String?> getPlatformVersion() {
    return GameboxPluginPlatform.instance.getPlatformVersion();
  }
}
