// CustomCheckBoxList: Reusable widget for multiple checkboxes
import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/themes/theme_text.dart';

class CustomCheckBoxList extends StatefulWidget {
  final List<String> options;
  const CustomCheckBoxList({super.key, required this.options});

  @override
   State<CustomCheckBoxList> createState() => _CustomCheckBoxListState();
}

class _CustomCheckBoxListState extends State<CustomCheckBoxList> {
  final Map<String, bool> _selectedOptions = {};

  @override
  void initState() {
    super.initState();
    for (var option in widget.options){
     _selectedOptions[option] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.options.map((option) {
        return CheckboxListTile(
          title: Text(option, style: ThemeStyles.blackTheme16),
          value: _selectedOptions[option],
          onChanged: (bool? value) {
            setState(() {
              _selectedOptions[option] = value ?? false;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
          dense: true,
          visualDensity: const VisualDensity(vertical: 0,horizontal: -4),
        );
      }).toList(),
    );
  }
}