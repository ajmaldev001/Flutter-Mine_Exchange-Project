import 'package:flutter_mine_exchange_project/data/network/network_api_service.dart';
import 'package:flutter_mine_exchange_project/repository/filter_repository.dart/filter_repository.dart';
import 'package:flutter_mine_exchange_project/repository/home_repository.dart/home_repository.dart';
import 'package:get_it/get_it.dart';

final getItInstance = GetIt.instance;

Future init() async {

  getItInstance.registerLazySingleton<NetworkApiService>(() => NetworkApiService());

  getItInstance
      .registerLazySingleton<HomeRepository>(() => HomeRepository());

  getItInstance
      .registerLazySingleton<FilterRepository>(() => FilterRepository());

}