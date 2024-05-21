import 'package:clean_architecture_flutter/data/datasource/coins_detail/coins_remote_datasource.dart';
import 'package:clean_architecture_flutter/data/repository/coins_repository_impl.dart';
import 'package:clean_architecture_flutter/domain/repositories/coins_repository.dart';
import 'package:clean_architecture_flutter/domain/usecases/get_currency_coins_price.dart';
import 'package:clean_architecture_flutter/presentation/cubit/coins_details/coins_details_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  //cubit
  sl.registerFactory(() => CoinsDetailsCubit(sl()));

  //use case
  sl.registerLazySingleton(() => GetCurrencyCoinsPrice(sl()));

  //repository
  sl.registerLazySingleton<CoinsRepository>(() => CoinsRepositoryImpl(sl()));

  //remote dataSource
  sl.registerLazySingleton<CoinsRemoteDataSource>(() => CoinsRemoteDataSourceImpl(sl()));

  // livrarias externas
  sl.registerLazySingleton(() => http.Client());
}