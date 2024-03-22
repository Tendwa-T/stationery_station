import 'package:intl/intl.dart';

class SsappFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat("dd-MM-yyyy").format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_GB', symbol: 'KSH').format(amount);
  }
}
