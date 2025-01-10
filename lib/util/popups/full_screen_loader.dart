import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/common/widgets/loaders/animation_loader.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class HFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: HHelperFunctions.isDarkMode(Get.context!)
              ? HColors.dark
              : HColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min, // Batasi ukuran Column
              children: [
                HAnimationLoaderWidget(text: text, animation: animation),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
