import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/color/colors.dart';
import 'package:flutter_mine_exchange_project/configs/components/custom_buttom_widget.dart';
import 'package:flutter_mine_exchange_project/configs/components/custom_drop_down_widget.dart';
import 'package:flutter_mine_exchange_project/configs/consts/text_constants.dart';
import 'package:flutter_mine_exchange_project/configs/themes/theme_text.dart';
import 'package:flutter_mine_exchange_project/view/filter/widgets/custom_check_box_list.dart';
import 'package:flutter_mine_exchange_project/view/filter/widgets/custom_radio_button_list.dart';
import 'package:flutter_mine_exchange_project/view/filter/widgets/filter_section_widget.dart';

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
      body: Container(
        color: AppColor.lightGrey,
        child:  SingleChildScrollView(
          padding:  const EdgeInsets.fromLTRB(18.0,12.0,18.0,100.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text(TextConstants.location, style: ThemeStyles.blackBold16),
               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: FilterSection(
                      key: UniqueKey(),
                      child: const CustomRadioButtonList(
                        options: ['Asia', 'North America','Europe'],
                      ),
                    ),
                  ),
                  Expanded(
                    child: FilterSection(
                      key: UniqueKey(),
                      child: const CustomRadioButtonList(
                        options: ['Africa', 'South America','Australia'],
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 8.0),
              Text(TextConstants.commoditySector, style: ThemeStyles.blackBold16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: FilterSection(
                        key: UniqueKey(),
                        child: const CustomRadioButtonList(
                          options: ['All Sectors', 'Precious Metals', 'Bulk Commodities','Industry Minerals'],
                        ),
                    ),
                  ),
                  Expanded(
                    child: FilterSection(
                        key: UniqueKey(),
                        child: const CustomRadioButtonList(
                          options: ['Base Metals', 'Energy Metals', 'Speciality Metals',],
                        ),
                    ),
                  ),
                ],
              ),
        
              const SizedBox(height: 8.0),
              Text(TextConstants.individualCommodities, style: ThemeStyles.blackBold16),
               Row(
                children: [
                  Expanded(
                    child: FilterSection(
                      key: UniqueKey(),
                      child: const CustomCheckBoxList(
                        options: [
                          'All Commodities', 'Gold', 'Silver', 'Copper', 'Nickel', 'Iron Ore',
                          'Lithium', 'Magnesium', 'Zinc', 'Platinum', 'Palladium',
                          'Cobalt', 'Graphite', 'Rare Earths', 'Thermal Coal',
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: FilterSection(
                      key: UniqueKey(),
                      child: const CustomCheckBoxList(
                        options: [
                          'All Commodities', 'Gold', 'Silver', 'Copper', 'Nickel', 'Iron Ore',
                          'Lithium', 'Magnesium', 'Zinc', 'Platinum', 'Palladium',
                          'Cobalt', 'Graphite', 'Rare Earths', 'Thermal Coal',
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 8.0),
              Text(TextConstants.projectStageAsset, style: ThemeStyles.blackBold16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: FilterSection(
                      key: UniqueKey(),
                      child: const CustomRadioButtonList(
                        options: ['Care and Maintenance', 'Production','Advanced Stage Exploration'],
                      ),
                    ),
                  ),
                  Expanded(
                    child: FilterSection(
                      key: UniqueKey(),
                      child: const CustomRadioButtonList(
                        options: ['Development', 'Early Stage Exploration',],
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 8.0),
              const Text(TextConstants.intention, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
               Row(
                children: [
                  Expanded(
                    child: FilterSection(
                      key: UniqueKey(),
                      child: const CustomRadioButtonList(
                        options: ['Form In/ Farm Out', 'Joint Venture','Option'],
                      ),
                    ),
                  ),
                  Expanded(
                    child: FilterSection(
                      key: UniqueKey(),
                      child: const CustomRadioButtonList(
                        options: ['Direct Sale', 'Lease','All Offers'],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8.0),
              const Text(TextConstants.priceRange, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
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
                          selectedItem: '',
                          items: const ['Select','A','B','C'],
                          hintText: 'Min',
                          onChanged: (value){
                          }
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
                          selectedItem: '',
                          items: const ['Select','A','B','C'],
                          hintText: 'Max',
                          onChanged: (value){
                          }
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Container(
        color: AppColor.mildGrey,
        child: Row(
          children: [
            Expanded(
              child: Text(TextConstants.clearFilter,
              textAlign: TextAlign.center,
              style: ThemeStyles.blackTheme16.copyWith(fontWeight: FontWeight.bold)
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
                  onPressed: (){}, 
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
