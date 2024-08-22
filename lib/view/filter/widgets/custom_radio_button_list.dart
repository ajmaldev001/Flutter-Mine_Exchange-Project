// CustomRadioButtonList: Reusable widget for radio buttons
import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/themes/theme_text.dart';

class CustomRadioButtonList extends StatefulWidget {
  final List<String> options;
  final void Function(String?) onChanged;
  final String? selectedOption;

  const CustomRadioButtonList({super.key, 
  required this.options, 
  required this.onChanged, 
  this.selectedOption});

  @override
  State<CustomRadioButtonList> createState() => _CustomRadioButtonListState();
}

class _CustomRadioButtonListState extends State<CustomRadioButtonList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.options.map((option) {
        return RadioListTile(
          title: Text(option,style: ThemeStyles.blackTheme16),
          value: option,
          groupValue: widget.selectedOption == option ? option : null,
          onChanged: (value){
            if (widget.selectedOption == value) {
              widget.onChanged(null);
            } else {
              widget.onChanged(value.toString());
            }
          },
          contentPadding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
          dense: true,
          visualDensity: const VisualDensity(vertical: 0,horizontal: -4)
        );
      }).toList(),
    );
  }
}