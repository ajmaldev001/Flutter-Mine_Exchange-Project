import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/view/filter/widgets/custom_radio_button_list.dart';

class ReUsableFilterRadioBtnWidget extends StatefulWidget {
  final List<String> items;
  final void Function(String?) onChanged;
  final String selectedOption;

  const ReUsableFilterRadioBtnWidget({
    super.key, 
    required this.items, 
    required this.onChanged, 
    required this.selectedOption, 
  });

  @override
  State<ReUsableFilterRadioBtnWidget> createState() => _ReUsableFilterRadioBtnWidgetState();
}

class _ReUsableFilterRadioBtnWidgetState extends State<ReUsableFilterRadioBtnWidget> {
  @override
  Widget build(BuildContext context) {
    List<Widget> buildRows(List<String> options) {
      List<Widget> rows = [];
      for (int i = 0; i < options.length; i += 2) {
        rows.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CustomRadioButtonList(
                  options: [options[i]], 
                  selectedOption: widget.selectedOption.contains(options[i]) ? options[i] : null,
                  onChanged: widget.onChanged,
                ),
              ),
              if (i + 1 < options.length)
                Expanded(
                  child: CustomRadioButtonList(
                    options: [options[i + 1]],
                    selectedOption: widget.selectedOption.contains(options[i + 1]) ? options[i + 1] : null,
                    onChanged: widget.onChanged,
                  ),
                ),
            ],
          ),
        );
      }
      return rows;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...buildRows(widget.items),
      ],
    );
  }
}
