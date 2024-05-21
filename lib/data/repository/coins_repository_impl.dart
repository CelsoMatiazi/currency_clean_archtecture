
import 'package:clean_architecture_flutter/core/errors/exceptions.dart';
import 'package:clean_architecture_flutter/core/errors/failure.dart';
import 'package:clean_architecture_flutter/data/datasource/coins_detail/coins_remote_datasource.dart';
import 'package:clean_architecture_flutter/domain/entities/coins_data.dart';
import 'package:clean_architecture_flutter/domain/repositories/coins_repository.dart';
import 'package:dartz/dartz.dart';

class CoinsRepositoryImpl implements CoinsRepository{

  final CoinsRemoteDataSource remoteDataSource;

  CoinsRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, Coins>> getCoinsPrice() async {
    try {
      final coins = await remoteDataSource.requestCoins();
      return Right(coins);
    } on ServeException {
      return left(const ServerFailure(message: "Ocorreu um erro ao obter os dados do servidor"));
    }
  }

}