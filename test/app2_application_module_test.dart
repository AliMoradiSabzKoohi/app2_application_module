import 'package:flutter_test/flutter_test.dart';
import 'package:app2_application_module/app2_application_module.dart';
import 'package:app2_application_module/app2_application_module_platform_interface.dart';
import 'package:app2_application_module/app2_application_module_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockApp2ApplicationModulePlatform
    with MockPlatformInterfaceMixin
    implements App2ApplicationModulePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final App2ApplicationModulePlatform initialPlatform = App2ApplicationModulePlatform.instance;

  test('$MethodChannelApp2ApplicationModule is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelApp2ApplicationModule>());
  });

  test('getPlatformVersion', () async {
    App2ApplicationModule app2ApplicationModulePlugin = App2ApplicationModule();
    MockApp2ApplicationModulePlatform fakePlatform = MockApp2ApplicationModulePlatform();
    App2ApplicationModulePlatform.instance = fakePlatform;

    expect(await app2ApplicationModulePlugin.getPlatformVersion(), '42');
  });
}
