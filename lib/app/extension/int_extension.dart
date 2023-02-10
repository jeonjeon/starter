import 'package:intl/intl.dart';

extension IntExtension on int {
  String toCommaString() {
    return NumberFormat('###,###,###,###').format(this);
  }
}
