
@JS()
library payment.js;

import 'package:js/js.dart';
import 'dart:convert';
class RazorPayWeb{
  final Razorpay razorPayJs;
  RazorPayWeb(Map<dynamic, dynamic> options)
      : razorPayJs = Razorpay(options);
  void open() => razorPayJs.open();

}

@JS()
@anonymous
class Razorpay{
  external  Razorpay(options);
  external  open();
}