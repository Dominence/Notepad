import 'package:notepad/pages/edit/view.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../app_export.dart';
import '../collection/view.dart';
import '../recent/view.dart';
import 'logic.dart';

class NoteHomePage extends StatelessWidget {
  static String get route => "/NoteHomePage";

  NoteHomePage({Key? key}) : super(key: key);

  final logic = Get.put(NoteHomeLogic());
  final state = Get.find<NoteHomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:appTheme.black ,
        elevation: 0,
        title:
       Text(
        "Name",
        style: GoogleFonts.alumniSans(
          color: appTheme.white,
          fontSize: 29,
        ),
      ),
    ),
      floatingActionButton:FloatingActionButton(backgroundColor: appTheme.greyie,
        elevation: 12,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70)),
        child:  CircleAvatar(
          radius: 24,
          backgroundColor: appTheme.green,
          child: Icon(Icons.add,
              color: appTheme.white),
        ),
          onPressed: () {

          },),

      backgroundColor: appTheme.black,
      body:DefaultTabController(length: 2,
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 22),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Container(
                      height: 35,
                      child: TextFormField(autocorrect: true,
                          cursorColor: Color(0xffffffff),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(7.0),
                            fillColor: appTheme.fillcolor,
                            filled: true,

                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0)),
                            hintText: ("Search notes"),
                            hintStyle: TextStyle(color: appTheme.white),
                            prefixIcon: Icon(Icons.search_rounded,color: Colors.white),
                          )),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                      child: TabBar(isScrollable: false,
                        indicatorWeight: 1,
                        indicatorColor:appTheme.blackie ,
                          dividerColor: appTheme.black,
                          tabs: [
                          Tab(
                              child: Center(
                                child: Text("Recent",
                                    style:GoogleFonts.alumniSans(
                                      color: appTheme.white,
                                      fontSize: 19
                                    ) ),
                              ),

                          ),
                        Tab(
                        child:
                        Padding(
                          padding: const EdgeInsets.only(right:60),
                            child: Center(
                              child: Text("Collection",
                                  style:GoogleFonts.alumniSans(
                                    color: appTheme.white,
                                    fontSize: 18
                                  ) ),
                            ),

                        ),
                        )
                      ],),
                  ),
                  SizedBox(
                    height: Get.height,
                    width: Get.width,
                    child: TabBarView(children: [
                      RecentPage(),
                       CollectionPage()

                    ]),
                  ),

                ]),
          ),
        ),
      )
    );
    }
}
