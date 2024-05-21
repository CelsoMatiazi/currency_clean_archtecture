import 'package:equatable/equatable.dart';

class Coins extends Equatable{

  final CoinData dollar;
  final CoinData dollarT;
  final CoinData dollarCanada;
  final CoinData libra;
  final CoinData pesoArgentina;
  final CoinData bitcoin;
  final CoinData liteCoin;
  final CoinData euro;
  final CoinData ienJapan;
  final CoinData franco;
  final CoinData dollarAustralia;
  final CoinData yuanChina;
  final CoinData shekelIsrael;
  final CoinData ethereum;
  final CoinData xrp;
  final CoinData dogeCoin;

  const Coins({
    required this.dollar,
    required this.dollarT,
    required this.dollarCanada,
    required this.libra,
    required this.pesoArgentina,
    required this.bitcoin,
    required this.liteCoin,
    required this.euro,
    required this.ienJapan,
    required this.franco,
    required this.dollarAustralia,
    required this.yuanChina,
    required this.shekelIsrael,
    required this.ethereum,
    required this.xrp,
    required this.dogeCoin,
  });

  @override
  List<Object?> get props => [
    dollar,
    dollarT,
    dollarCanada,
    libra,
    pesoArgentina,
    bitcoin,
    liteCoin,
    euro,
    ienJapan,
    franco,
    dollarAustralia,
    yuanChina,
    shekelIsrael,
    ethereum,
    xrp,
    dogeCoin,
  ];
}



class CoinData extends Equatable{
  final String code;
  final String codeIn;
  final String name;
  final String high;
  final String low;
  final String varBid;
  final String pctChange;
  final String bid;
  final String ask;
  final String timestamp;
  final String createdDate;

  const CoinData({
    required this.code,
    required this.codeIn,
    required this.name,
    required this.high,
    required this.low,
    required this.varBid,
    required this.pctChange,
    required this.bid,
    required this.ask,
    required this.timestamp,
    required this.createdDate
  });

  @override
  List<Object?> get props => [
    code,
    codeIn,
    name,
    high,
    low,
    varBid,
    pctChange,
    bid,
    ask,
    timestamp,
    createdDate
  ];

}



