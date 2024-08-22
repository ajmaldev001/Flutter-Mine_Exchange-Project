import 'package:flutter_mine_exchange_project/configs/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_mine_exchange_project/configs/themes/theme_text.dart';


class CommonSuccessAndErrorHandler {
  static handleMethod({
    required BuildContext context,
    Exception? exception,
    String message = '',
    Color? backgroundColor,
    bool changeIcons = false,
  }) {
    
    String text = message.isNotEmpty ? message : 'Something error occurred';
    IconData icon = changeIcons ? Icons.check_circle : Icons.error;
    Color snackbarBackgroundColor = backgroundColor ?? AppColor.red;

    // Using SchedulerBinding to show the Snackbar after the build completes
    SchedulerBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: SizedBox(
            height: 40,
            child: ListTile(
              dense: true,
              title: Text(
                text,
                style: ThemeStyles.whiteTheme16,
              ),
              trailing: Icon(icon, color: AppColor.white),
            ),
          ),
          backgroundColor: snackbarBackgroundColor,
          duration: const Duration(seconds: 4),
        ),
      );
    });
  }
}
