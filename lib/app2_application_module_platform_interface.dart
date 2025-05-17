import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'app2_application_module_method_channel.dart';

abstract class App2ApplicationModulePlatform extends PlatformInterface {
  /// Constructs a App2ApplicationModulePlatform.
  App2ApplicationModulePlatform() : super(token: _token);

  static final Object _token = Object();

  static App2ApplicationModulePlatform _instance = MethodChannelApp2ApplicationModule();

  /// The default instance of [App2ApplicationModulePlatform] to use.
  ///
  /// Defaults to [MethodChannelApp2ApplicationModule].
  static App2ApplicationModulePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [App2ApplicationModulePlatform] when
  /// they register themselves.
  static set instance(App2ApplicationModulePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
