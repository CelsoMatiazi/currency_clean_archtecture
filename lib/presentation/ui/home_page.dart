import 'package:flutter/material.dart';

import '../../domain/entities/coins_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.dataCoins
  }) : super(key: key);

  final Coins dataCoins;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final List<CoinData> data = [
      dataCoins.dollar,
      dataCoins.dollarT,
      dataCoins.dollarCanada,
      dataCoins.dollarAustralia,
      dataCoins.libra,
      dataCoins.euro,
      dataCoins.franco,
      dataCoins.pesoArgentina,
      dataCoins.ienJapan,
      dataCoins.yuanChina,
      dataCoins.shekelIsrael,
      dataCoins.bitcoin,
      dataCoins.liteCoin,
      dataCoins.ethereum,
      dataCoins.xrp,
      dataCoins.dogeCoin,
    ];


    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: data.map((e){
                    return Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      //height: size.height * .1,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2,2),
                              blurRadius: 10
                            )
                          ]
                      ),
                      child: Row(
                        children: [

                          Container(
                            width: size.width * .2,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.green,
                                    Colors.white
                                  ]
                              )
                            ),

                            child: const Icon(Icons.monetization_on_outlined,
                              size: 80,
                              color: Colors.white60,
                            ),
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(e.code,
                                style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(e.name
                                  .replaceAll("/Real Brasileiro", ""),
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 16),
                              ),
                             Row(
                               children: [
                                 Text("Low:  R\$ ${e.low}",
                                   textAlign: TextAlign.center,
                                   style: const TextStyle(fontSize: 16),
                                 ),
                                 const SizedBox(width: 10,),
                                 Text("Hight: R\$ ${e.high}",
                                   textAlign: TextAlign.center,
                                   style: const TextStyle(fontSize: 16),
                                 )
                               ],
                             )
                            ],
                          ),
                        ],
                      ),
                    );
                  }).toList()
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
