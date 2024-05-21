
import 'package:bloc/bloc.dart';
import 'package:clean_architecture_flutter/presentation/cubit/coins_details/coins_detail_state.dart';
import 'package:dartz/dartz.dart';
import '../../../core/errors/failure.dart';
import '../../../domain/entities/coins_data.dart';
import '../../../domain/usecases/get_currency_coins_price.dart';

class CoinsDetailsCubit extends Cubit<CoinsDetailsState> {

  final GetCurrencyCoinsPrice getCurrencyCoinsPrice;

  CoinsDetailsCubit(this.getCurrencyCoinsPrice) : super(CoinsDetailsStateInitial());

  void getCoins() async {
    emit(CoinsDetailsStateLoading());
    final failureOrCoins = await getCurrencyCoinsPrice();
    emit(_failureOrCoins(failureOrCoins));
  }

  CoinsDetailsState _failureOrCoins(Either<Failure, Coins> failureOrCoins){
    return failureOrCoins.fold((failure) => CoinsDetailsStateError(_mapFailureToMessage(failure)), (coins) => CoinsDetailsStateLoaded(coins));
  }

  String _mapFailureToMessage(Failure failure){
    switch(failure.runtimeType){
      case ServerFailure:
        return 'Ocorreu um erro, tente novamente';
      default:
        return 'Unexpected error';
    }
  }

}

