import 'package:flutter/material.dart';
import 'package:flutter_getx_base/app_controller.dart';
import 'package:flutter_getx_base/shared/constants/common.dart';
import 'package:flutter_getx_base/shared/widgets/custom_bottom_navigation_bar.dart';
import 'package:get/get.dart';

import '../../shared/constants/colors.dart';
import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  final AppController appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (controller.bottomNavIndex.value != 0) {
          controller.setValueBottomIndex(0);
          return false;
        }
        return controller.onWillPop();
      },
      child: Obx(
        () => Scaffold(
          extendBody: true,
          resizeToAvoidBottomInset: false,
          body: IndexedStack(
            index: controller.bottomNavIndex.value,
            children: _widgetOptions(),
          ),
          bottomNavigationBar: _bottomNav(controller),
        ),
      ),
    );
  }

  Widget _bottomNav(HomeController controller) {
    return Obx(
      () => CustomBottomNavigationBar(
        selectedIndex: controller.bottomNavIndex.value,
        color: appController.isDarkModeOn.value
            ? Colors.white
            : ColorConstants.grey.withOpacity(.6),
        backgroundColor: appController.isDarkModeOn.value
            ? Colors.grey[800]
            : ColorConstants.white,
        selectedColor: appController.isDarkModeOn.value
            ? ColorConstants.colorDarkModeBlue
            : ColorConstants.kPrimaryColor,
        notchedShape: const CircularNotchedRectangle(),
        onTabSelected: (value) => controller.setValueBottomIndex(value),
        items: [
          BottomBarItem(
            iconData: controller.bottomNavIndex.value == 0
                ? controller.bottomNavSelectedIconPaths[0]
                : controller.imagePaths[0],
            text: CommonConstants.home.tr,
          ),
          BottomBarItem(
            iconData: controller.bottomNavIndex.value == 1
                ? controller.bottomNavSelectedIconPaths[1]
                : controller.imagePaths[1],
            text: CommonConstants.event.tr,
          ),
          BottomBarItem(
            iconData: controller.bottomNavIndex.value == 2
                ? controller.bottomNavSelectedIconPaths[2]
                : controller.imagePaths[2],
            text: CommonConstants.reward.tr,
          ),
          BottomBarItem(
            iconData: controller.bottomNavIndex.value == 3
                ? controller.bottomNavSelectedIconPaths[3]
                : controller.imagePaths[3],
            text: CommonConstants.profile.tr,
          ),
        ],
      ),
    );
  }

  List<Widget> _widgetOptions() {
    return [
      Center(child: Text("Screen 1")),
      Center(child: Text("Screen 2")),
      Center(child: Text("Screen 3")),
      Center(child: Text("Screen 4")),
    ];
  }
}
