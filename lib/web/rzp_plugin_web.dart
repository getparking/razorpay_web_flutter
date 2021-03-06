import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:rzpwplugin/web/razorpay.dart';

class RzpPlugin {
  static void registerWith(Registrar registrar) {
    final MethodChannel channel = MethodChannel(
      'rzp_plugin',
      const StandardMethodCodec(),
      registrar.messenger,
    );
    final RzpPlugin instance = RzpPlugin();
    channel.setMethodCallHandler(instance.handleMethodCall);
  }

  RazorPayWeb razorPay;
  Future<dynamic> handleMethodCall(MethodCall call) async {
    print(call.method);
    switch (call.method) {
      case "init":
        final Map<dynamic, dynamic> options = call.arguments["options"];
        print(options);
        razorPay = RazorPayWeb(options);
        break;
      case "open":
        if (razorPay != null) {
          razorPay.open();
        }
        break;
    }
  }
}
