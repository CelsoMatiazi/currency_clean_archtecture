
import '../../domain/entities/coins_data.dart';

class CoinsModel extends Coins{

  final CoinDataModel dollar;
  final CoinDataModel dollarT;
  final CoinDataModel dollarCanada;
  final CoinDataModel libra;
  final CoinDataModel pesoArgentina;
  final CoinDataModel bitcoin;
  final CoinDataModel liteCoin;
  final CoinDataModel euro;
  final CoinDataModel ienJapan;
  final CoinDataModel franco;
  final CoinDataModel dollarAustralia;
  final CoinDataModel yuanChina;
  final CoinDataModel shekelIsrael;
  final CoinDataModel ethereum;
  final CoinDataModel xrp;
  final CoinDataModel dogeCoin;

  const CoinsModel({
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
  }) : super(
    dollar : dollar,
    dollarT : dollarT,
    dollarCanada : dollarCanada,
    libra : libra,
    pesoArgentina : pesoArgentina,
    bitcoin : bitcoin,
    liteCoin : liteCoin,
    euro : euro,
    ienJapan : ienJapan,
    franco : franco,
    dollarAustralia : dollarAustralia,
    yuanChina : yuanChina,
    shekelIsrael : shekelIsrael,
    ethereum : ethereum,
    xrp : xrp,
    dogeCoin : dogeCoin,
  );


  factory CoinsModel.fromMap(Map<String, dynamic> map) {
    return CoinsModel(
      dollar: CoinDataModel.fromMap(map['USD']),
      dollarT: CoinDataModel.fromMap(map['USDT']),
      dollarCanada: CoinDataModel.fromMap(map['CAD']),
      libra: CoinDataModel.fromMap(map['GBP']),
      pesoArgentina: CoinDataModel.fromMap(map['ARS']),
      bitcoin: CoinDataModel.fromMap(map['BTC']),
      liteCoin: CoinDataModel.fromMap(map['LTC']),
      euro: CoinDataModel.fromMap(map['EUR']),
      ienJapan: CoinDataModel.fromMap(map['JPY']),
      franco: CoinDataModel.fromMap(map['CHF']),
      dollarAustralia: CoinDataModel.fromMap(map['AUD']),
      yuanChina: CoinDataModel.fromMap(map['CNY']),
      shekelIsrael: CoinDataModel.fromMap(map['ILS']),
      ethereum: CoinDataModel.fromMap(map['ETH']),
      xrp: CoinDataModel.fromMap(map['XRP']),
      dogeCoin: CoinDataModel.fromMap(map['DOGE']),
    );
  }
}


class CoinDataModel extends CoinData{
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

  const CoinDataModel({
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
  }) : super(
      code: code,
      codeIn: codeIn,
      name: name,
      high: high,
      low: low,
      varBid: varBid,
      pctChange : pctChange,
      bid : bid,
      ask : ask,
      timestamp: timestamp,
      createdDate: createdDate
  );



  factory CoinDataModel.fromMap(Map<String, dynamic> map) {
    return CoinDataModel(
      code: map['code'] ?? "",
      codeIn: map['codein'] ?? "",
      name: map['name'] ?? "",
      high: map['high'] ?? "",
      low: map['low'] ?? "",
      varBid: map['varBid'] ?? "",
      pctChange: map['pctChange'] ?? "",
      bid: map['bid'] ?? "",
      ask: map['ask'] ?? "",
      timestamp: map['timestamp'] ?? "",
      createdDate: map['createdDate'] ?? "",
    );
  }
}




