// CustomCheckBoxList: Reusable widget for multiple checkboxes
import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/themes/theme_text.dart';
import 'package:flutter_mine_exchange_project/view_model/filter/filter_view_model.dart';
import 'package:provider/provider.dart';

class ReUsableFilterCheckBoxWidget extends StatefulWidget {
  final List<String> options;
  const ReUsableFilterCheckBoxWidget({super.key, required this.options});

  @override
   State<ReUsableFilterCheckBoxWidget> createState() => _ReUsableFilterCheckBoxWidgetState();
}

class _ReUsableFilterCheckBoxWidgetState extends State<ReUsableFilterCheckBoxWidget> {
  FilterViewModel _filterViewModel = FilterViewModel();
  @override
  void initState() {
    _filterViewModel = Provider.of<FilterViewModel>(context,listen: false);
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> buildRows(){
      List<Widget> rows = [];
        for (var i = 0; i < widget.options.length; i += 2) {
          rows.add(
              Row(
              children: [
                 Expanded(
                  child: CheckboxListTile(
                    title: Text(widget.options[i], style: ThemeStyles.blackTheme16),
                    value: _filterViewModel.setSelectedCheckBoxAsDynamic(widget.options[i]),
                    onChanged: (bool? value) {
                       if(value != null){
                        _filterViewModel.toggleSelectedCheckList(value,widget.options[i]);
                       }
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                    dense: true,
                    visualDensity: const VisualDensity(vertical: 0,horizontal: -4),
                  ),
                ),
                if (i + 1 < widget.options.length)
                Expanded(
                  child: CheckboxListTile(
                    title: Text(widget.options[i + 1], style: ThemeStyles.blackTheme16),
                    value: _filterViewModel.setSelectedCheckBoxAsDynamic(widget.options[i + 1]),
                    onChanged: (bool? value) {
                       if(value != null){
                         _filterViewModel.toggleSelectedCheckList(value,widget.options[i + 1]);
                       }
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                    dense: true,
                    visualDensity: const VisualDensity(vertical: 0,horizontal: -4),
                  ),
                ),
              ]),
          );
      }
      return rows;
    }
    return Column(
      children: [
        ...buildRows(),
      ],
    );
  }
}