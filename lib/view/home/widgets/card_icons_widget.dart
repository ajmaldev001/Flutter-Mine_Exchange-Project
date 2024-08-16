import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/view/home/widgets/reusable_text_widget.dart';

class CardIconsWidget extends StatelessWidget {
  const CardIconsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
        Expanded(
         flex: 1,
          child: Column(
           children: [
             Row(
               children: [
                 Icon(Icons.business_center, size: 16, color: Colors.grey),
                 SizedBox(width: 5),
                 ReusableCardsTextWidget(text: 'Energy Metals'),
               ],
             ),
             SizedBox(height: 10),
             Row(
               children: [
                 Icon(Icons.location_on, size: 16, color: Colors.grey),
                 SizedBox(width: 5),
                 ReusableCardsTextWidget(text: 'Energy Metals')
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
                 Icon(Icons.business_center, size: 16, color: Colors.grey),
                 SizedBox(width: 5),
                 ReusableCardsTextWidget(text: 'North America'),
               ],
             ),
             SizedBox(height: 10),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Icon(Icons.money_off_csred, size: 16, color: Colors.grey),
                 SizedBox(width: 5),
                 ReusableCardsTextWidget(text: '\$1,999,999 - \$2,999,999')
               ],
             ),
           ],
         ),
       ),
     ],
    );
  }
}