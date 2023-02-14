import 'package:hyper_ui/core.dart';

class Format {}

extension CommonExtension on DateTime {
  get dMMMy {
    var value = this;
    return DateFormat("d MMM y").format(value);
  }

  get dMMMykksss {
    var value = this;
    return DateFormat("d MMM y kk:ss").format(value);
  }
}

extension ParserExtension on dynamic {
  double toDouble() {
    var value = this;
    return double.parse("$value");
  }
}

extension NumberFormatExtension on double {
  get idr {
    var value = this;
    var formatter = NumberFormat.currency(locale: 'id');
    return formatter.format(value);
  }
}
