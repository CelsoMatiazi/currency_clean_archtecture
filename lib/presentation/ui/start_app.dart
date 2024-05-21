
import 'package:clean_architecture_flutter/presentation/cubit/coins_details/coins_detail_state.dart';
import 'package:clean_architecture_flutter/presentation/cubit/coins_details/coins_details_cubit.dart';
import 'package:clean_architecture_flutter/presentation/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_architecture_flutter/injection_container.dart';

class StartApp extends StatelessWidget {
  const StartApp({Key? key}) : super(key: key);

  void _getCoins(BuildContext context) async {
    final coinsDetailCubit = context.read<CoinsDetailsCubit>();
    coinsDetailCubit.getCoins();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
          create: (context) => sl<CoinsDetailsCubit>(),
          child: BlocBuilder<CoinsDetailsCubit, CoinsDetailsState>(
            builder: (context, state) {
              if(state is CoinsDetailsStateInitial){
                _getCoins(context);
                return const Center(child: CircularProgressIndicator(),);
              } else if(state is CoinsDetailsStateLoaded){
                final coins = state.coin;
                return HomePage(dataCoins: coins);
              } else if(state is CoinsDetailsStateLoading){
                return const Center(child: CircularProgressIndicator());
              } else if(state is CoinsDetailsStateError){
                return Center(child: Text("Error : ${state.message}"),);
              } else {
                return Container();
              }
            },
          ),
      )
    );
  }
}


