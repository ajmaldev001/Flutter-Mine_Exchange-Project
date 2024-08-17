import 'dart:io';
import 'package:flutter_mine_exchange_project/configs/api_constants.dart';
import 'package:flutter_mine_exchange_project/data/exceptions/app_exceptions.dart';
import 'package:flutter_mine_exchange_project/data/network/network_api_service.dart';
import 'package:flutter_mine_exchange_project/di/get_it.dart';
import 'package:flutter_mine_exchange_project/models/home/home_response_model.dart';

class HomeRepository {
  Future<HomeResponseModel> getMinesData() async {
    try {
      final response = await getItInstance<NetworkApiService>().getMinesData(ApiConstants.baseMineUrl);
      return HomeResponseModel.fromJson(response ?? {});
    } on SocketException {
      throw InternetException('No Internet Connection');
    } on WebSocketException{
       throw InternetException('No Internet Connection');
    }
  }
}

