
import 'package:clean_architecture_flutter/core/errors/failure.dart';
import 'package:clean_architecture_flutter/domain/entities/coins_data.dart';
import 'package:clean_architecture_flutter/domain/repositories/coins_repository.dart';
import 'package:dartz/dartz.dart';

class GetCurrencyCoinsPrice {
  final CoinsRepository coinsRepository;

  GetCurrencyCoinsPrice(this.coinsRepository);

  Future<Either<Failure, Coins>> call() async {
    return coinsRepository.getCoinsPrice();
  }
}