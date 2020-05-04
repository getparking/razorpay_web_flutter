import 'dart:async';
import 'package:flutter/services.dart';

class Rzpwplugin {
  static const MethodChannel _channel =
      const MethodChannel('rzp_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static void load() async {
    await _channel.invokeMethod('load');
  }

  static void init(Map<dynamic,dynamic> options) async {
    await _channel.invokeMethod('init', {
      "options": options,
    });
  }

  static void open() async {
    await _channel.invokeMethod('open');
  }
}
