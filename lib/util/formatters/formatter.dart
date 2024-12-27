import 'package:intl/intl.dart';

class HFormatter {
  static String formDate(DateTime date) {
    date ??= DateTime.now();

    return DateFormat('dd.MM.yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: "id_ID", symbol: "IDR").format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // if (phoneNumber.length > 10) {
    //   return '()'
    // }
    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    var digitOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    String countryCode = '+${digitOnly.substring(0, 2)}';
    digitOnly = digitOnly.substring(2);

    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == "+62") {
        groupLength = 4;
      }

      int end = i + groupLength;
      formattedNumber.write(digitOnly.substring(i, end));
      if (end < digitOnly.length) {
        formattedNumber.write(" ");
      }

      i = end;
    }

    return formattedNumber.toString();
  }
}
