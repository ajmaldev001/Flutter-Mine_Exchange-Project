import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/components/custom_text_feild_widget.dart';
import 'package:flutter_mine_exchange_project/view/home/widgets/bottom_header_widget.dart';
import 'package:flutter_mine_exchange_project/view/home/widgets/mines_card_widget.dart';
import 'package:flutter_mine_exchange_project/view/home/widgets/top_image_stack_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                /* TopImageStackWidget contains Text, Logo, Description & Backgroound Image */
                TopImageStackWidget(
                  height: ScreenUtil().screenHeight * 0.3
                ),
      
                /* Bottom Header Widget */
                const SizedBox(height: 40),
                const BottomHeaderWidget(),
      
                /* Mines Detail Card Widget */
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                     itemBuilder: (context, index) {
                      return const MinesCard();
                    }
                  ),
                )
              ],
            ),
      
            /* Textfeild Widget */
            Positioned(
              top: ScreenUtil().screenHeight * 0.3 - 35.h,
              left: 0,
              right: 0,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomTextFeildWidget(),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

