import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/color/colors.dart';
import 'package:flutter_mine_exchange_project/configs/components/custom_error_handler.dart';
import 'package:flutter_mine_exchange_project/configs/components/custom_text_feild_widget.dart';
import 'package:flutter_mine_exchange_project/models/home/home_response_model.dart';
import 'package:flutter_mine_exchange_project/view/home/widgets/bottom_header_widget.dart';
import 'package:flutter_mine_exchange_project/view/home/widgets/mines_card_widget.dart';
import 'package:flutter_mine_exchange_project/view/home/widgets/top_image_stack_widget.dart';
import 'package:flutter_mine_exchange_project/view_model/home/home_view_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

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
                FutureBuilder(
                  future: context.read<HomeViewModel>().fetchHomeMineData(),
                  builder: (context,snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Expanded(child: Center(child: CircularProgressIndicator(color: AppColor.mildGrey,backgroundColor: AppColor.black,)));
                    } else if (snapshot.hasError) {
                       CommonErrorHandler.handleError(context: context,errorMessage: snapshot.hasError.toString());
                    } else {
                      return Consumer<HomeViewModel>(
                      builder: (context,value,child) {
                        List<HomeListData> homeListData = value.homeResponseModel?.data ?? [];
                        return Expanded(
                          child: ListView.builder(
                            itemCount: homeListData.map((e) => e.id).toList().length,
                             itemBuilder: (context, index) {
                              return MinesCard(homeListData: homeListData,index: index);
                              }
                            ),
                          );
                        }
                      );
                    }
                   return Container();
                  }
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

