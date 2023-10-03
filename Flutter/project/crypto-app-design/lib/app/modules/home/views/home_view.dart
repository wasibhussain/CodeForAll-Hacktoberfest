import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../../../../utils/helper_widget.dart';
import '../../../constants/colors.dart';
import '../controllers/home_controller.dart';
import 'banner_widget.dart';
import 'coin_list_widget.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var mQ = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Colors.black,
            child: Stack(
              children: [
                Obx(() => Container(
                      color: Colors.grey.shade700,
                      height: controller.isBannersVisible.isTrue
                          ? mQ.height * 0.4
                          : mQ.height * 0.28,
                    )),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      headerWidget(),
                      BannerWidget(
                        controller: controller,
                        coinNames: controller.coinNames,
                      ),
                      allTokenRow(),
                      CoinVerticalListWidget(controller: controller)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.yellowColor,
        elevation: 0,
        onPressed: () {},

        child: Transform.scale(
            scale: 0.6,
            child: Image.asset(
              Assets.assetsIcUpDown,
            )), //icon inside button
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade900,
        notchMargin: 5,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            //children inside bottom appbar
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              iconWithText(
                  text: "Wallet",
                  asset: Assets.assetsIcWallet,
                  height: 25.0,
                  style: HelperWidget.boldText(color: AppColor.yellowColor)),
              iconWithText(
                  text: "Gallery", asset: Assets.assetsIcGallery, height: 25.0),
              HelperWidget.hGap(20),
              iconWithText(
                  text: "Favourite", asset: Assets.assetsIcStar, height: 25.0),
              iconWithText(
                  text: "Settings",
                  asset: Assets.assetsIcSettings,
                  height: 25.0),
            ],
          ),
        ),
      ),
    );
  }

  allTokenRow() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "All Tokens",
            style: HelperWidget.boldText(fontSize: 18.0),
          ),
          InkWell(
            onTap: () {
              openBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                  color: AppColor.yellowColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SizedBox(
                      height: 20, child: Image.asset(Assets.assetsIcUpDown)),
                  HelperWidget.hGap(10),
                  Text(
                    "Sort By",
                    style: HelperWidget.boldText(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  headerWidget() {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(10)),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Portfolio Balance",
                        style: HelperWidget.boldText(),
                      ),
                      Text("\$46.78",
                          style: HelperWidget.boldText(
                              color: AppColor.yellowColor, fontSize: 18.0))
                    ],
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: AppColor.yellowColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        SizedBox(
                            height: 20,
                            child: Image.asset(Assets.assetsIcDemoImg)),
                        HelperWidget.hGap(10),
                        Text(
                          "Jon Ben",
                          style: HelperWidget.boldText(color: Colors.black),
                        ),
                        HelperWidget.hGap(10),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  iconWithText(asset: Assets.assetsIcArrowUp, text: "Send"),
                  HelperWidget.hGap(10),
                  iconWithText(
                      asset: Assets.assetsIcArrowDown, text: "Receive"),
                  Spacer(),
                  iconWithText(asset: Assets.assetsIcQrCode, text: "Scan"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  iconWithText({String? text, String? asset, height, style}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: height ?? 40,
          child: Image.asset(asset!),
        ),
        HelperWidget.vGap(10),
        Text(
          text!,
          style: style ?? HelperWidget.boldText(),
        )
      ],
    );
  }

  openBottomSheet() {
    return showModalBottomSheet(
        enableDrag: false,
        isDismissible: false,
        backgroundColor: Colors.transparent,
        context: Get.context!,
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                color: Colors.grey.shade900),
            child: Container(
              height: Get.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                //   color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  HelperWidget.vGap(10),
                  Container(
                    width: 80,
                    height: 8,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  HelperWidget.vGap(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sort By",
                          style: HelperWidget.boldText(fontSize: 18.0),
                        ),
                        InkWell(
                            onTap: () {
                              Get.back();
                              controller.onDone();
                            },
                            child: Text(
                              "Done",
                              style: HelperWidget.boldText(
                                  fontSize: 18.0, color: AppColor.yellowColor),
                            ))
                      ],
                    ),
                  ),
                  HelperWidget.vGap(10),
                  Divider(
                    height: 4,
                    color: Colors.white,
                    thickness: 1,
                  ),
                  HelperWidget.vGap(10),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.sortHeadingList.length,
                      itemBuilder: (context, index) {
                        return Obx(() => InkWell(
                              onTap: () {
                                controller.indexTapped(index);
                              },
                              child: Container(
                                color: controller.selectedIndex == index
                                    ? AppColor.yellowColor
                                    : Colors.transparent,
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  child: Text(
                                    controller.sortHeadingList[index],
                                    style: HelperWidget.boldText(
                                        color: controller.selectedIndex == index
                                            ? Colors.black87
                                            : Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ));
                      })
                ],
              ),
            ),
          );
        });
  }
}
