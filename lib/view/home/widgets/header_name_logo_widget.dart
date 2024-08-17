import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/color/colors.dart';
import 'package:flutter_mine_exchange_project/configs/consts/image_constants.dart';
import 'package:flutter_mine_exchange_project/configs/consts/text_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderNameLogoWidget extends StatelessWidget {
  const HeaderNameLogoWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
     height: height * 0.4,
     alignment: Alignment.center,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
         /* Left Logo Image */
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                height: 50.h,
                width: 50.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(ImageConstants.mineImg))
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
          /* Center Logo Name */
          Positioned(
            top: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                TextConstants.mineExchange,
                style: GoogleFonts.inter(
                fontSize: 30.r,
                fontWeight: FontWeight.w500,
                color: AppColor.white
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}