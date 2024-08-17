import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/color/colors.dart';
import 'package:flutter_mine_exchange_project/configs/consts/image_constants.dart';
import 'package:flutter_mine_exchange_project/configs/themes/theme_text.dart';
import 'package:google_fonts/google_fonts.dart';

class MineImageWithBadgeWdget extends StatelessWidget {
  final String minesNetworkImage;
  final String lease;
  final String status;
  const MineImageWithBadgeWdget({
    super.key, 
    required this.minesNetworkImage, 
    required this.lease, 
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          child: Image.asset(
            ImageConstants.sampleMineImage,
            height: 180,
            width: double.infinity,
            alignment: Alignment.center,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => 
              SizedBox(
                height: 180,
                child: Center(child: Text('Error while loading image',
                style: ThemeStyles.commonRobotoTheme.copyWith(color: AppColor.red),))),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
               CircleAvatar(
                  radius: 6,
                  backgroundColor: 
                  status == '1'
                  ? AppColor.green
                  : AppColor.yellow,
                ),
                const SizedBox(width: 6),
                Text(
                  lease.isNotEmpty ? lease : 'NA',
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}