import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/color/colors.dart';

class CustomTextFeildWidget extends StatelessWidget {
  const CustomTextFeildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColor.black,
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[400]!
          )
        ),
        hintText: 'Search by region, commodity, assets',
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        fillColor: Colors.white,
        filled: true,
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide:  const BorderSide(
            color: AppColor.black
          )
        ),
        suffixIcon: Container(
          decoration:  BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8.0)
          ),
          margin: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
          child: TextButton.icon(
            onPressed: () {
              // print('Button Pressed');
            },
            style: ButtonStyle(
              iconColor: WidgetStateProperty.all<Color>(AppColor.black),
            ),
            icon: const Icon(Icons.filter_alt_outlined),
            label: const Text('Filter',style: TextStyle(color: AppColor.black),), 
          ),
        ),
      ),
    );
  }
}