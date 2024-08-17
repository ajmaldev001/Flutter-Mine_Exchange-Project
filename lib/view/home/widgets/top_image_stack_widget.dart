import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/color/colors.dart';
import 'package:flutter_mine_exchange_project/configs/consts/image_constants.dart';
import 'package:flutter_mine_exchange_project/configs/consts/text_constants.dart';
import 'package:flutter_mine_exchange_project/view/home/widgets/header_name_logo_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TopImageStackWidget extends StatelessWidget {
  const TopImageStackWidget({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        /* Background Opacity Image */
        Container(
          height: height,
          decoration: BoxDecoration(
            color: AppColor.black,
            image: DecorationImage(
              image: const AssetImage(ImageConstants.mineImg),
              fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  AppColor.black.withOpacity(0.3),
                  BlendMode.dstATop,
                ),
              )
          ),
        ),
    
         Column(
          children:[
            
            /* Top Header Name and Logo Widget*/
            HeaderNameLogoWidget(height: height),
            const SizedBox(height: 8),
            
            /* Top description text */
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: TextConstants.empowering,
                    style: GoogleFonts.roboto(
                      fontSize: 18.r,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                      color: AppColor.white,
                    ),
                  ),
                  TextSpan(
                    text: TextConstants.brokersAndSellers,
                    style: GoogleFonts.roboto(
                      fontSize: 18.r,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w800,
                      color: AppColor.red, 
                    ),
                  ),
                ],
              ),
            ),
             
             const SizedBox(height: 8),
             Text(
              TextConstants.descriptionText,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                      fontSize: 24.r,
                      fontWeight: FontWeight.w800,
                      color: AppColor.white,
                ),
              ),
           ]
         ),
      ],
    );
  }
}

