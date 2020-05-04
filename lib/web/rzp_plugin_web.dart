import 'dart:async';
import 'dart:html';

import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:import_js_library/import_js_library.dart';
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

  Future<dynamic> handleMethodCall(MethodCall call) async {
    print(call.method);
    switch (call.method) {
     
      case "init":
        final Map<dynamic,dynamic> options = call.arguments["options"];
        print(options);
        
        var razorPay = RazorPayWeb(options);
         if(razorPay != null){
          razorPay.open();
        }
        break;
    }
  }
}