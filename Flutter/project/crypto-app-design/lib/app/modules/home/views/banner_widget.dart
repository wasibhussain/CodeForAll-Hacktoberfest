import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../../../../utils/helper_widget.dart';
import '../controllers/home_controller.dart';

class BannerWidget extends StatelessWidget {
  BannerWidget({
    Key? key,
    required this.controller,
    required this.coinNames,
  }) : super(key: key);
  final HomeController controller;
  final List<String> coinNames;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Visibility(
          visible: controller.isBannersVisible.isTrue,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              height: 150,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 100,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Buy ${coinNames[index]}",
                              style: HelperWidget.boldText(fontSize: 18.0),
                            ),
                            HelperWidget.vGap(5),
                            Text(
                              "Buy ${coinNames[index]} with cash now",
                              style: HelperWidget.boldText(fontSize: 15.0),
                            ),
                          ],
                        ),
                        HelperWidget.hGap(20),
                        SizedBox(
                          height: 60,
                          child: Image.asset(Assets.assetsIcDemoImg),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              Assets.assetsIcBannerBackground,
                            ),
                            fit: BoxFit.fill)),
                  );
                },
                itemCount: coinNames.length,
                itemWidth: 320.0,
                loop: false,
                layout: SwiperLayout.STACK,
                onIndexChanged: (int val) {
                  if (val == 4) {
                    controller.isBannersVisible(false);
                  }
                },
              ),
            ),
          ),
        ));
  }
}
