import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/models/home/home_response_model.dart';
import 'package:flutter_mine_exchange_project/repository/home_repository.dart/home_repository.dart';

class HomeViewModel extends ChangeNotifier{
  HomeResponseModel? homeResponseModel;
  final HomeRepository _homeRepository = HomeRepository();
   
   Future fetchHomeMineData() async {
      final response = await _homeRepository.getMinesData();
      if (response.data != null) {
       homeResponseModel = response;
       notifyListeners();
       debugPrint('homeResponseModel: ${homeResponseModel?.data?.map((e) => e.id ?? '').toList() ?? []}');
      } else {
        debugPrint("No data found");
      }
    }

}