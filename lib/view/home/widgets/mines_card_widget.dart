import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/color/colors.dart';
import 'package:flutter_mine_exchange_project/configs/consts/image_constants.dart';
import 'package:flutter_mine_exchange_project/configs/utils.dart';
import 'package:flutter_mine_exchange_project/models/home/home_response_model.dart';
import 'package:flutter_mine_exchange_project/view/home/widgets/card_icons_widget.dart';
import 'package:flutter_mine_exchange_project/view/home/widgets/mine_image_badge_widget.dart';
import 'package:flutter_mine_exchange_project/view/home/widgets/reusable_text_widget.dart';
import 'package:flutter_mine_exchange_project/view/home/widgets/top_bar_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class MinesCard extends StatelessWidget {
  const MinesCard({super.key, required this.homeListData, required this.index});
  final List<HomeListData> homeListData;
  final int index;
  

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 12.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              // Top bar widget
              TopBarWidget(
              companyName: homeListData[index].sellerId?.companyName ?? '', 
              personaName: '${homeListData[index].sellerId?.firstName}', 
              topBarColorCode: homeListData[index].sellerId?.colourCode ?? '', 
              textColor: homeListData[index].sellerId?.colourCode ?? '',
              ),
              
              // Image with badge overlay
              MineImageWithBadgeWdget(
                minesNetworkImage: homeListData[index].sellerId?.companyLogo ?? '', 
                status: homeListData[index].sellerId?.status.toString() ?? '', 
                lease:  homeListData[index].intension ?? '',
              ),
              
              // Content section
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ReusableCardsTextWidget(text: homeListData[index].commodity ?? ''),
                        Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: Text(
                            'Listed At: ${Utils.convertDate(homeListData[index].createdAt)}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.roboto(
                              fontSize:  14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[700],
                              ),
                            ),
                          ),
                        ],
                      ),
                     const SizedBox(height: 5),
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 4),
                       child: Text(
                        homeListData[index].sellerId?.bio ?? 'NA',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColor.midGrey,
                        ),
                       ),
                     ),
                     const SizedBox(height: 10),
                     
                     /* Card List Icons with Location and MineValue  */
                      CardIconsWidget(
                        money: homeListData[index].priceRange ?? '', 
                        exploration: homeListData[index].commodity ?? '', 
                        location: homeListData[index].region ?? '', 
                        metalName: homeListData[index].name ?? ''
                      ),

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
                  backgroundImage: AssetImage(ImageConstants.sampleClientImg),
                  backgroundColor: AppColor.white,
            )
          ),
        ],
      ),
    );
  }
}

