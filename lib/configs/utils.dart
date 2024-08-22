import 'dart:ui';

import 'package:flutter_mine_exchange_project/configs/color/colors.dart';
import 'package:intl/intl.dart';

abstract class Utils {
    static String constrainCharc(int maxLength, String text) {
      return (text.length > maxLength) ? '${text.substring(0, maxLength)}...' : text;
    }

    static Color hexColor(String hexColor) {
      if(hexColor.isNotEmpty){
        String formattedColor = hexColor.replaceAll("#", "0xFF");
      return Color(int.parse(formattedColor));
      }else{
        return AppColor.white;
      }
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