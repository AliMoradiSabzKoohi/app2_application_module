import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'app2_application_module_platform_interface.dart';

/// An implementation of [App2ApplicationModulePlatform] that uses method channels.
class MethodChannelApp2ApplicationModule extends App2ApplicationModulePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('app2_application_module');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
