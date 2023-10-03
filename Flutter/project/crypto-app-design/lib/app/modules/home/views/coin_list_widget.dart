import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../../../../utils/helper_widget.dart';
import '../../../constants/colors.dart';
import '../controllers/home_controller.dart';

class CoinVerticalListWidget extends StatelessWidget {
  CoinVerticalListWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: controller.coinDataList.length,
      itemBuilder: (context, index) {
        return Obx(() => Container(
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                    child: Image.asset(Assets.assetsIcDemoImg),
                  ),
                  HelperWidget.hGap(10),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                controller.coinDataList[index].name!,
                                style: HelperWidget.boldText(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                              Text(
                                controller.coinDataList[index].value!,
                                style: HelperWidget.boldText(
                                    color: AppColor.yellowColor,
                                    fontSize: 18.0),
                              )
                            ],
                          ),
                          HelperWidget.vGap(5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                controller.coinDataList[index].symbol!,
                                style:
                                    HelperWidget.normalText(color: Colors.grey),
                              ),
                              Text(
                                "\$" +
                                    controller.coinDataList[index].price!
                                        .toString(),
                                style:
                                    HelperWidget.boldText(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
      },
      separatorBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Divider(
            height: 2,
            color: Colors.grey,
            thickness: 0.5,
          ),
        );
      },
    );
  }
}
