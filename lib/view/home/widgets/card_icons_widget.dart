import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/view/home/widgets/reusable_text_widget.dart';

class CardIconsWidget extends StatelessWidget {
  final String metalName;
  final String location;
  final String exploration;
  final String money;
  const CardIconsWidget({
    super.key, 
    required this.metalName, 
    required this.location, 
    required this.exploration, 
    required this.money,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
        Expanded(
         flex: 1,
          child: Column(
           children: [
             Row(
               children: [
                 const Icon(Icons.business_center, size: 16, color: Colors.grey),
                 const SizedBox(width: 5),
                 ReusableCardsTextWidget(text: metalName),
               ],
             ),
             const SizedBox(height: 10),
             Row(
               children: [
                 const Icon(Icons.location_on, size: 16, color: Colors.grey),
                 const SizedBox(width: 5),
                 ReusableCardsTextWidget(text: location)
               ],
             ),
           ],
          ),
        ),
    
       Expanded(
         flex: 1,
         child: Column(
           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
              Row(
               children: [
                 const Icon(Icons.work_off, size: 16, color: Colors.grey),
                 const SizedBox(width: 5),
                 ReusableCardsTextWidget(text: exploration),
               ],
             ),
             const SizedBox(height: 10),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 const Icon(Icons.attach_money_outlined, size: 16, color: Colors.grey),
                 const SizedBox(width: 5),
                 ReusableCardsTextWidget(text: money)
               ],
             ),
           ],
         ),
       ),
     ],
    );
  }
}