import 'dart:ui';

import 'package:intl/intl.dart';

abstract class Utils {
    static String constrainCharc(int maxLength, String text) {
      return (text.length > maxLength) ? '${text.substring(0, maxLength)}...' : text;
    }

    static Color hexColor(String hexColor) {
      String formattedColor = hexColor.replaceAll("#", "0xFF");
      return Color(int.parse(formattedColor));
    }

    static String convertDate(String? dateString) {
      if (dateString == null || dateString.isEmpty) {
        return DateFormat('dd MMM, yy').format(DateTime.now());
      }
      try {
        DateTime dateTime = DateTime.parse(dateString);
        return DateFormat('dd MMM, yy').format(dateTime);
      } catch (e) {
        return DateFormat('dd MMM, yy').format(DateTime.now());
      }
    }

}