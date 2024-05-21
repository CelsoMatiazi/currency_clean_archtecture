
import 'package:dartz/dartz.dart';
import '../../core/errors/failure.dart';
import '../entities/coins_data.dart';

abstract class CoinsRepository {
  Future<Either<Failure, Coins>> getCoinsPrice();
}