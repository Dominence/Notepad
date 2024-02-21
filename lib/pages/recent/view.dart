import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app_export.dart';
import 'logic.dart';

class RecentPage extends StatelessWidget {
  RecentPage({Key? key}) : super(key: key);

  final logic = Get.put(RecentLogic());
  final state = Get.find<RecentLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height-300,
      width: Get.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20,top: 22),
            child: Container(
              height: 127,
              width: 320,
              decoration:
              BoxDecoration(
                  color:appTheme.greyie,
                  borderRadius: BorderRadius.circular(11)),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Container(
              height: 127,
              width: 320,
              decoration:
              BoxDecoration(
                  color:appTheme.greyie,
                  borderRadius: BorderRadius.circular(11)),
            ),
          ),
        ],
      ),
    );
  }
}
