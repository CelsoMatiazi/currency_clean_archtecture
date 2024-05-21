
import 'package:equatable/equatable.dart';
import '../../../domain/entities/coins_data.dart';

abstract class CoinsDetailsState extends Equatable {
  const CoinsDetailsState();

  @override
  List<Object> get props => [];
}

class CoinsDetailsStateInitial extends CoinsDetailsState {}

class CoinsDetailsStateLoading extends CoinsDetailsState {}

class CoinsDetailsStateLoaded extends CoinsDetailsState {
  final Coins coin;
  const CoinsDetailsStateLoaded(this.coin);

  @override
  List<Object> get props => [coin];
}

class CoinsDetailsStateError extends CoinsDetailsState {
  final String message;
  const CoinsDetailsStateError(this.message);

  @override
  List<Object> get props => [message];
}