import 'package:flutter_test/flutter_test.dart';
import 'package:gamebox_plugin/gamebox_plugin.dart';
import 'package:gamebox_plugin/gamebox_plugin_platform_interface.dart';
import 'package:gamebox_plugin/gamebox_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGameboxPluginPlatform
    with MockPlatformInterfaceMixin
    implements GameboxPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final GameboxPluginPlatform initialPlatform = GameboxPluginPlatform.instance;

  test('$MethodChannelGameboxPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGameboxPlugin>());
  });

  test('getPlatformVersion', () async {
    GameboxPlugin gameboxPlugin = GameboxPlugin();
    MockGameboxPluginPlatform fakePlatform = MockGameboxPluginPlatform();
    GameboxPluginPlatform.instance = fakePlatform;

    expect(await gameboxPlugin.getPlatformVersion(), '42');
  });
}
