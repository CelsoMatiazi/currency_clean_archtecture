
import 'dart:convert';
import 'package:clean_architecture_flutter/core/errors/exceptions.dart';
import '../../models/coin_model.dart';
import 'package:http/http.dart' as http;

abstract class CoinsRemoteDataSource {
  Future<CoinsModel> requestCoins();
}

class CoinsRemoteDataSourceImpl implements CoinsRemoteDataSource {

  final http.Client client;

  CoinsRemoteDataSourceImpl(this.client);

  @override
  Future<CoinsModel> requestCoins() async {

    const String url = "https://economia.awesomeapi.com.br/json/all";
    final uri = Uri.parse(url);
    final response = await client.get(uri);

    if(response.statusCode == 200){
      final data = jsonDecode(response.body);
      return CoinsModel.fromMap(data);
    } else {
      throw ServeException();
    }
  }

}