import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/color/colors.dart';
import 'package:flutter_mine_exchange_project/configs/themes/theme_text.dart';
import 'package:flutter_mine_exchange_project/configs/utils.dart';

class TopBarWidget extends StatelessWidget {
  final String companyName;
  final String personaName;
  final String topBarColorCode;
  final String textColor;
  const TopBarWidget({
    super.key, 
    required this.companyName, 
    required this.personaName, 
    required this.topBarColorCode, 
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: topBarColorCode.isEmpty
        ? AppColor.blue
        : Utils.hexColor(topBarColorCode),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(6))
      ),
      alignment: Alignment.center,
      child: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(
              companyName,
              style: ThemeStyles.commonRobotoTheme.copyWith(
                color: AppColor.white,
                // textColor.isEmpty || textColor == '#000000'
                // ? AppColor.white 
                // : Utils.hexColor(textColor)
              )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42.0),
              child: Text(
                Utils.constrainCharc(12,personaName),
                overflow: TextOverflow.ellipsis,
                style: ThemeStyles.commonRobotoTheme.copyWith(fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}