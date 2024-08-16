import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/color/colors.dart';
import 'package:flutter_mine_exchange_project/configs/consts/image_constants.dart';
import 'package:google_fonts/google_fonts.dart';

class MineImageWithBadgeWdget extends StatelessWidget {
  const MineImageWithBadgeWdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          child: Image.asset(
            ImageConstants.mineImage, // Placeholder image
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
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
                  const CircleAvatar(
                  radius: 6,
                  backgroundColor: AppColor.red,
                ),
                const SizedBox(width: 6),
                Text(
                  'Joint Venture',
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