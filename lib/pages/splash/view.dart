import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notepad/app_export.dart';
import 'package:notepad/pages/note_home/view.dart';

import 'logic.dart';

class SplashPage extends StatefulWidget {
  static String get route => "/splashpage";

  SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final logic = Get.put(SplashLogic());

  final state = Get.find<SplashLogic>().state;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then((value) =>
        Get.offAllNamed(NoteHomePage.route));
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.primary,
      body: Container(
        width: 1000,
        height: 1000,
        child: Center(
            child: Text("DOMINENCE",
                style: GoogleFonts.alice(
                  color: Colors.black,
                  fontSize: 34
                ))),
      ),
    );
  }
}
