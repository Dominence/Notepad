import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app_export.dart';
import 'logic.dart';

class CollectionPage extends StatelessWidget {

  CollectionPage({Key? key}) : super(key: key);

  final logic = Get.put(CollectionLogic());
  final state = Get.find<CollectionLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,
          childAspectRatio: 0.8),
          itemBuilder: (context, index){
            return  GestureDetector(
            child:Card(

              surfaceTintColor: appTheme.green,
              elevation: 17,
              color: Colors.yellow,
              child: Column(
                children: [
                   GridTile(child: Container(
                     height: 130,
                     width: 200,
                     color: appTheme.greyie,
                   ))
                ],
              ),
            ) ,
            );
          }

      ),
    );
  }
}
