import 'package:intl/intl.dart';

class DateTimeUtils {
  // Date time Format
  static const dateFormatddMMyyyy = 'dd-MM-yyyy';

  static String dateToString(DateTime dateTime) {
    return DateFormat(dateFormatddMMyyyy).format(dateTime);
  }
}
