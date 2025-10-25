import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime date) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    date ??= DateTime.now();
    return formatter.format(date);
  }

  static String formatCurrency(double amount) {
    final NumberFormat currencyFormatter =
        NumberFormat.currency(locale: 'en_NP', symbol: 'RS').format(amount)
            as NumberFormat;
    return currencyFormatter.format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    //It is a Nepali Phone number formatter: +977-xxxxxxxxxx
    if (phoneNumber.startsWith('+977')) {
      return phoneNumber.replaceFirst('+977', '+977-');
    } else if (phoneNumber.startsWith('977')) {
      return phoneNumber.replaceFirst('977', '+977-');
    } else if (phoneNumber.startsWith('0')) {
      return phoneNumber.replaceFirst('0', '+977-');
    } else {
      return '+977-$phoneNumber';
    }
    if (phoneNumber.length == 10) {
      return '+977-$phoneNumber';
    } else {
      return phoneNumber;
    }
  }
}
