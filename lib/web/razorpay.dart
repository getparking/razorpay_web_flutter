@JS()
library razorpayweb;

import 'package:js/js.dart';


class RazorPayWeb {
  final Razorpay razorPayJs;
  RazorPayWeb(Map<dynamic, dynamic> options)
      : razorPayJs = Razorpay(RazorPayptions(
            key: options["key"],
            amount: options["amount"],
            currency: options["currency"],
            name: options["name"],
            description: options["description"],
            image: options["image"],
            order_id: options["order_id"],
            prefill: Prefill(
                name: options["name"],
                email: options["email"],
                contact: options["contact"]),
            notes: Notes(address: options["address"]),
            theme: RazorTheme(color: options["color"])));
  void open() => razorPayJs.open();
}

@JS()
class Razorpay {
  external Razorpay(RazorPayptions options);
  external open();
}

@JS()
@anonymous
class RazorPayptions {
  external String get key;
  external String get amount;
  external String get currency;
  external String get name;
  external String get description;
  external String get image;
  external String get order_id;
  external String get prefill;
  external String get notes;
  external String get theme;

  external factory RazorPayptions(
      {String key,
      String amount,
      String currency,
      String name,
      String description,
      String image,
      String order_id,
      Prefill prefill,
      Notes notes,
      RazorTheme theme});
}

@JS()
@anonymous
class Prefill {
  external String get name;
  external String get email;
  external String get contact;
  external factory Prefill({
    String name,
    String email,
    String contact,
  });
}

@JS()
@anonymous
class Notes {
  external String get address;
  external factory Notes({
    String address,
  });
}

@JS()
@anonymous
class RazorTheme {
  external String get color;
  external factory RazorTheme({
    String color,
  });
}
