import 'package:get/get.dart';

import 'state.dart';

class VigioLogic extends GetxController {
  final VigioState state = VigioState();
  var a=1.obs;
  void increment(){
    a.value++;
    print(a.value);
  }
  void decrement  ()  {
    a.value--;
    print(a.value);
  }
}
