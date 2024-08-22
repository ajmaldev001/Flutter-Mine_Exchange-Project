import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/color/colors.dart';
import 'package:flutter_mine_exchange_project/configs/components/custom_buttom_widget.dart';
import 'package:flutter_mine_exchange_project/configs/components/custom_drop_down_widget.dart';
import 'package:flutter_mine_exchange_project/configs/components/custom_success_and_error_handler.dart';
import 'package:flutter_mine_exchange_project/configs/consts/text_constants.dart';
import 'package:flutter_mine_exchange_project/configs/themes/theme_text.dart';
import 'package:flutter_mine_exchange_project/view/filter/widgets/custom_check_box_list.dart';
import 'package:flutter_mine_exchange_project/view/filter/widgets/reusable_filter_radio_btn_widget.dart';
import 'package:flutter_mine_exchange_project/view_model/filter/filter_view_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(TextConstants.filterMenu),
            backgroundColor: AppColor.white,
            elevation: 0,
            centerTitle: false,
            leading: Container(),
            flexibleSpace: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 28),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal:  12.0),
                    decoration: BoxDecoration(
                      color: AppColor.lightGrey,
                      borderRadius: BorderRadius.circular(4)
                    ),
                    child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      }, 
                      icon: const Icon(Icons.arrow_back)
                    ),
                  ),
              ],
            ),
          ),
          body: FutureBuilder(
            future: context.read<FilterViewModel>().fetchHomeMineFilterData(),
            builder: (context,snapshot) {
              if(snapshot.connectionState == ConnectionState.waiting){
                return Container();
              } else if(snapshot.hasError){
                return Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Something error occurred',
                    style: ThemeStyles.blackTheme16.copyWith(color: AppColor.red),
                  ),
                );
              } else if (snapshot.connectionState == ConnectionState.done){
                 return Consumer<FilterViewModel>(
                      builder: (context,filterViewModelData,child) {
                      return Container(
                      color: AppColor.lightGrey,
                      child:  SingleChildScrollView(
                        padding:  const EdgeInsets.fromLTRB(18.0,12.0,18.0,100.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            /* Continent Section */
                            filterViewModelData.filterResponseModel?.data?.continents?.isNotEmpty ?? false
                            ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(TextConstants.location, style: ThemeStyles.blackBold16),
                                ReUsableFilterRadioBtnWidget(
                                  items: filterViewModelData.filterResponseModel?.data?.continents ?? [], 
                                  onChanged: (value) { 
                                    filterViewModelData.selectContinent(value!);
                                   }, 
                                  selectedOption: filterViewModelData.selectedContinents!,
                                ),
                              ],
                            )
                            : Container(),
                            
                            const SizedBox(height: 8.0),

                            /* Commodity Sector */
                            Text(TextConstants.commoditySector, style: ThemeStyles.blackBold16),
                            ReUsableFilterRadioBtnWidget(
                              items: filterViewModelData.promptValues ?? [], 
                              onChanged: (value) { 
                              filterViewModelData.retreiveItemsFromFilterData(value ?? '');
                              filterViewModelData.selectCommoditySector(value!);
                               }, 
                               selectedOption: filterViewModelData.selectedCommoditySector!, 
                            ),
                      
                            const SizedBox(height: 8.0),
                            Text(TextConstants.individualCommodities, style: ThemeStyles.blackBold16),
                            
                            ReUsableFilterCheckBoxWidget(
                              options: filterViewModelData.metals,
                            ),
                            
                            /* Project Stage Asset */
                            const SizedBox(height: 8.0),
                            Text(TextConstants.projectStageAsset, style: ThemeStyles.blackBold16),
                             ReUsableFilterRadioBtnWidget(
                              items: filterViewModelData.projectStageAssetItems, 
                              onChanged: (value) { 
                                filterViewModelData.selectProjectStageAsset(value ?? '');
                               }, 
                              selectedOption: filterViewModelData.selectedProjectStageAsset!, 
                            ),
                                      
                            
                            const SizedBox(height: 8.0),
                            /* Intention */
                            const Text(TextConstants.intention, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            ReUsableFilterRadioBtnWidget(
                              items: filterViewModelData.intentionItems, 
                              onChanged: (value) { 
                                filterViewModelData.selectIntention(value ?? '');
                               }, 
                             selectedOption: filterViewModelData.selectedIntention!, 
                            ),
                                      
                            const SizedBox(height: 8.0),
                            const Text(
                              TextConstants.priceRange, 
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                            ),
                            const SizedBox(height: 14.0),
                            
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Min',style: ThemeStyles.blackBold16),
                                      const SizedBox(height: 4.0),
                                      CustomDropdownButton(
                                        selectedItem: filterViewModelData.selectedMinPriceItem,
                                        items: ['Any',...filterViewModelData.minPriceRangeItems],
                                        hintText: 'Any',
                                        onChanged: (value){
                                          filterViewModelData.selectedMinPriceItem = value ?? '';
                                        }, 
                                        menuHeight: ScreenUtil().screenHeight * 0.3,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Max',style: ThemeStyles.blackBold16),
                                      const SizedBox(height: 4.0),
                                      CustomDropdownButton(
                                        selectedItem: filterViewModelData.selectedMaxPriceItem,
                                        items:  ['Any',...filterViewModelData.maxPriceRangeItems],
                                        hintText: 'Any',
                                        onChanged: (value){
                                          filterViewModelData.selectedMaxPriceItem = value ?? '';
                                        },
                                        menuHeight: ScreenUtil().screenHeight * 0.3
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                     );
                    }
                  );
              }
              return Container();
            }
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: Container(
            color: AppColor.mildGrey,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () => context.read<FilterViewModel>().clearFilter(),
                    child: Text(TextConstants.clearFilter,
                    textAlign: TextAlign.center,
                    style: ThemeStyles.blackTheme16.copyWith(fontWeight: FontWeight.bold)
                    ),
                  )
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    child: CustomButton(
                      buttonText: TextConstants.applyFilter,
                      buttonHeight: 50,
                      buttonTextColor: AppColor.white,
                      buttonColor: AppColor.black,
                      onPressed: (){
                        Navigator.pushNamed(context, '/');
                        CommonSuccessAndErrorHandler.handleMethod(
                          context: context,
                          backgroundColor: AppColor.green,
                          changeIcons: true,
                          message: 'Filter has been applied'
                          );
                      }, 
                      buttonWidth: double.infinity,
                      borderRadius: 8,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
  }
}

