import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPlugin {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> get manufactureName async {
    final String version = await _channel.invokeMethod('getManufacture');
    return version;
  }

  static Future<String> get modelName async {
    final String version = await _channel.invokeMethod('getModel');
    return version;
  }
}
