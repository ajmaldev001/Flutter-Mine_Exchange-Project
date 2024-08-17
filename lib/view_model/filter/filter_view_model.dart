import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/loader/custom_loader.dart';
import 'package:flutter_mine_exchange_project/models/filter/filter_response_model.dart';
import 'package:flutter_mine_exchange_project/repository/filter_repository.dart/filter_repository.dart';

class FilterViewModel extends ChangeNotifier{
  final FilterRepository _filterRepository = FilterRepository();

  FilterResponseModel? filterResponseModel;
  List<String> continents = [];
  List<String> metals = [];
  List<String> promptValues = ["Base Metals","Precious Metals","Energy Metals","Bulk Commodities","Specialty Metals","Industrial Minerals"];


   Future fetchHomeMineFilterData() async {
      showCustomLoader('Loading..');
      final response = await _filterRepository.getMinesFilterData();
      if (response.data != null) {
       dismissCustomLoader();
       filterResponseModel = response;
       retreiveSelectedMetals('Base Metals');
       notifyListeners();
      } else {
        dismissCustomLoader();
        debugPrint("No data found");
      }
    }

  
  void retreiveSelectedMetals(String selectedMetals){
      metals.clear();
      var filters = filterResponseModel?.data?.filters;
      if(filters != null){
        for(var filter in filters){
          var prompts = filter.prompts;
           for(var prompt in prompts!){
             if(prompt.promptValues == selectedMetals){
                var nestedPrompts = prompt.nestedPrompts;
                  if(nestedPrompts != null){
                     metals = nestedPrompts.map((nestedEelement) => nestedEelement.nestedPromptValues.toString()).toList();
                }
             }
           }
        }
      }
      notifyListeners();
    }

}