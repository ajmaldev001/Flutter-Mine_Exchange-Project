import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/loader/custom_loader.dart';
import 'package:flutter_mine_exchange_project/models/filter/filter_response_model.dart';
import 'package:flutter_mine_exchange_project/repository/filter_repository.dart/filter_repository.dart';

class FilterViewModel extends ChangeNotifier{
  final FilterRepository _filterRepository = FilterRepository();

  FilterResponseModel? filterResponseModel;
  
  List<String> continents = [];
  List<String> metals = [];
  List<String>? promptValues = [];
  List<String> projectStageAssetItems = [];
  List<String> intentionItems = [];
  List<String> minPriceRangeItems = [];
  List<String> maxPriceRangeItems = [];
  
  String? _selectedCommoditySector = '';
  String? _selectedProjectStageAsset = '';
  String? _selectedIntention = '';
  String? _selectedContinents = '';
  String selectedMinPriceItem = '';
  String selectedMaxPriceItem = '';

  String? get selectedCommoditySector => _selectedCommoditySector;
  String? get selectedProjectStageAsset => _selectedProjectStageAsset;
  String? get selectedIntention => _selectedIntention;
  String? get selectedContinents => _selectedContinents;

  Map<String,bool> selectedMetals = {};

  void initializeData(){
   metals = filterResponseModel?.data?.commodities ?? [];
   for(var metal in metals){
     selectedMetals[metal] = false;
   }
   minPriceRangeItems = filterResponseModel?.data?.priceRange?.minPriceRange?.map((item) => item.toString()).toList() ?? [];
   maxPriceRangeItems = filterResponseModel?.data?.priceRange?.maxPriceRange?.map((item) => item.toString()).toList() ?? [];
   notifyListeners();
  }

  void selectCommoditySector(String value) {
    _selectedCommoditySector = value;
    notifyListeners();
  }

  void selectProjectStageAsset(String value) {
    _selectedProjectStageAsset = value;
    notifyListeners();
  }

  void selectIntention(String value) {
    _selectedIntention = value;
    notifyListeners();
  }

  void selectContinent(String value) {
    _selectedContinents = value;
    notifyListeners();
  }

  void toggleSelectedCheckList(bool value,String selectedKey){
    selectedMetals[selectedKey] = value;
    notifyListeners();
  }

  bool setSelectedCheckBoxAsDynamic(String selectedKey){
    return selectedMetals[selectedKey] ?? false;
  }

  void clearFilter(){
   _selectedCommoditySector = '';
   _selectedProjectStageAsset = '';
   _selectedIntention = '';
   _selectedContinents = '';
   selectedMinPriceItem = 'Any';
   selectedMaxPriceItem = 'Any';
   selectedMetals.forEach((key, value) {
    selectedMetals[key] = false;
   });
   notifyListeners();
  }
  
  void retreiveItemsFromFilterData(String selectedMetals){
      metals.clear();
      var filters = filterResponseModel?.data?.filters;
      if(filters != null){
        for(var filter in filters){
          var promptsList = filter.prompts;
           if (promptsList != null) {
            for(var prompt in promptsList){
              filter.type == '6' ? projectStageAssetItems = promptsList.map((e) => e.promptValues.toString()).toList() : [];
              filter.type == '7' ? intentionItems = promptsList.map((e) => e.promptValues.toString()).toList() : [];
              if(prompt.promptValues == selectedMetals){
                var nestedPrompts = prompt.nestedPrompts;
                  if(nestedPrompts != null){
                      metals = nestedPrompts.map((nestedEelement) => nestedEelement.nestedPromptValues.toString()).toList();
                      promptValues = promptsList.map((e) => e.promptValues.toString()).toList();
                }
              } else{
                if(filter.question == 'Commodity Sector'){
                  promptValues = promptsList.map((e) => e.promptValues.toString()).toList();
                }
              }
            }
          }
        }
      }
      notifyListeners();
    }


  /* Filter API Call */
    Future fetchHomeMineFilterData() async {
      showCustomLoader('Loading..');
      final response = await _filterRepository.getMinesFilterData();
      if (response.data != null) {
       dismissCustomLoader();
       filterResponseModel = response;
       retreiveItemsFromFilterData('');
       initializeData();
       } else {
        dismissCustomLoader();
      }
      notifyListeners();
    }


}