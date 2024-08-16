import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/color/colors.dart';
import 'package:flutter_mine_exchange_project/configs/components/custom_buttom_widget.dart';
import 'package:flutter_mine_exchange_project/configs/consts/text_constants.dart';
import 'package:flutter_mine_exchange_project/configs/themes/theme_text.dart';

class BottomHeaderWidget extends StatelessWidget {
  const BottomHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TextConstants.discover,style: ThemeStyles.commonRobotoTheme.copyWith(color: AppColor.grey)),
              Text(TextConstants.featuredProjects,style: ThemeStyles.greyBold24),
            ],
          ),
          CustomButton(
            key: const ValueKey('bottom_header_view_all_button'),
            onPressed: () {
              Navigator.pushNamed(context, '/filter_screen');
            },
            buttonText: 'View All',
            buttonColor: AppColor.black,
            buttonTextColor: Colors.white,
            borderRadius: 8.0,
            fontSize: 16,
            buttonWidth: 100,
          ),
        ],
      ),
    );
  }
}