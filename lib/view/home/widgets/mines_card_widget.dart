import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/color/colors.dart';
import 'package:flutter_mine_exchange_project/configs/consts/image_constants.dart';
import 'package:flutter_mine_exchange_project/view/home/widgets/card_icons_widget.dart';
import 'package:flutter_mine_exchange_project/view/home/widgets/mine_image_badge_widget.dart';
import 'package:flutter_mine_exchange_project/view/home/widgets/reusable_text_widget.dart';
import 'package:flutter_mine_exchange_project/view/home/widgets/top_bar_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class MinesCard extends StatelessWidget {
  const MinesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top bar widget
              const TopBarWidget(),
              
              // Image with badge overlay
              const MineImageWithBadgeWdget(),
              
              // Content section
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableCardsTextWidget(text: 'Gold'),
                        ReusableCardsTextWidget(text: 'Listed: 01 Apr, 24'),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'High Purity Expressions of Interest SoughtHighPurity, Expressions of Interest Sought',
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColor.midGrey,
                      ),
                    ),
                     const SizedBox(height: 10),
                     
                     /* Card List Icons with Location and MineValue  */
                     const CardIconsWidget(),

                     const SizedBox(height: 5),
                  ],
                ),
              ),
            ],
          ),
          
          /* Card Profile Image */
          const Positioned(
                top: 10,
                right: 8,
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(ImageConstants.mineImage),
                  backgroundColor: AppColor.white,
            )
          ),
        ],
      ),
    );
  }
}

