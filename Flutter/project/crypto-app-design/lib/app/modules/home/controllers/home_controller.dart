import 'package:get/get.dart';

import '../../../model/coin_model.dart';

class HomeController extends GetxService {
  final count = 0.obs;
  RxInt _tappedIndex = 0.obs;
  RxBool isBannersVisible = true.obs;
  List<String> coinNames = ["Doge", "Bitcoin", "Ripple", "Solana", "Etherium"];
  RxList<CoinDataModel> coinDataList = [
    CoinDataModel("Tezos", "XTZ", "100", 10),
    CoinDataModel("Ripple", "ZRX", "789", 50),
    CoinDataModel("Shibu", "SHB", "123", 80),
    CoinDataModel("Doge", "DOG", "11", 5),
    CoinDataModel("Bitcoin", "BTC", "85", 90),
    CoinDataModel("Etherium", "ETH", "10", 110),
  ].obs;

  List<String> sortHeadingList = [
    "Price: Lowest to high",
    "Price: Highest to low"
  ];

  int get selectedIndex => _tappedIndex.value;

  void indexTapped(value) {
    _tappedIndex.value = value;
  }

  void onDone() {
    if (selectedIndex == 0) {
      ascendingOrder();
    } else {
      descendingOrder();
    }
  }

  void ascendingOrder() {
    coinDataList.sort((a, b) => a.price!.compareTo(b.price!));
  }

  void descendingOrder() {
    coinDataList.sort((b, a) => a.price!.compareTo(b.price!));
  }
}
