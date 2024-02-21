
import 'package:notepad/pages/edit/view.dart';

import '../../app_export.dart';
import 'logic.dart';

class VigioPage extends StatelessWidget {
  VigioPage({Key? key}) : super(key: key);

  final logic = Get.put(VigioLogic());
  final state = Get.find<VigioLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: AppTheme.primary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("NotePad",style:TextStyle(color: Colors.yellow) ),
      ),
      floatingActionButton:
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding:  EdgeInsets.only(bottom: Dimentions.defaultAppbarHieht),
            child: FloatingActionButton(
              onPressed: () {
                Get.to(EditPage());
              },
              child: Container(
                child: Center(
                  child: Text("Go",
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                ),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: FloatingActionButton(
              onPressed: () {
                logic.increment();
              },
              child: Container(
                child: Center(
                  child: Text("+",
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                ),

              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              logic.decrement();
            },
            child: Container(
              child: Center(
                child: Text("-",
                    style: TextStyle(fontSize: 30, color: Colors.black)),
              ),

            ),
          ),
        ],
      ),

      body: Center(
        child: Container(
          child: Obx(() {
            return Text("${logic.a.value}");
          }),
        ),
      ),
    );
  }
}
