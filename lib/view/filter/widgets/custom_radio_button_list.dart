// CustomRadioButtonList: Reusable widget for radio buttons
import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/themes/theme_text.dart';

class CustomRadioButtonList extends StatefulWidget {
  final List<String> options;

  const CustomRadioButtonList({super.key, required this.options});

  @override
  State<CustomRadioButtonList> createState() => _CustomRadioButtonListState();
}

class _CustomRadioButtonListState extends State<CustomRadioButtonList> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.options.map((option) {
        return RadioListTile(
          title: Text(option,style: ThemeStyles.blackTheme16),
          value: option,
          groupValue: _selectedOption,
          onChanged: (String? value) {
            setState(() {
              _selectedOption = value;
            });
          },
          contentPadding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
          dense: true,
          visualDensity: const VisualDensity(vertical: 0,horizontal: -4)
        );
      }).toList(),
    );
  }
}