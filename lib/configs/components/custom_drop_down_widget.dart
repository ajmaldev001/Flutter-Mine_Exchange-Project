import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/themes/theme_text.dart';

class CustomDropdownButton extends StatefulWidget {
  final Function(String?) onChanged;
  final List<dynamic>? items;
  final  String? selectedItem;
  final String hintText;
  const CustomDropdownButton({
    this.items,
    required this.selectedItem,
    required this.onChanged,
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String selectedItem = '';

  @override
  void initState() {
     super.initState();
     setState(() {
      selectedItem = widget.selectedItem ?? '';
     });
  }


  @override
  Widget build(BuildContext context) {
    final uniqueItems = widget.items!.toSet().toList();
    return InputDecorator(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
      child: DropdownButtonFormField<String>(
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        value: selectedItem.isNotEmpty && uniqueItems.contains(selectedItem) ? selectedItem : null,
        hint: Text(
          widget.hintText,
          style: ThemeStyles.blackTheme16,
        ),
        icon: const Icon(Icons.keyboard_arrow_down_sharp),
        items: uniqueItems
            .map(
              (item) => DropdownMenuItem<String>(
                value: item,
                child: Column(
                  children: [
                    Text(
                      item[0].toUpperCase() + item.substring(1),
                      style: ThemeStyles.blackTheme16,
                    ),
                  ],
                ),
              ),
            )
            .toList(),
        onChanged: ((item) {
          setState(() {
            selectedItem = item!;
          });
          widget.onChanged(item);
        }
        ),
      ),
    );
  }
}