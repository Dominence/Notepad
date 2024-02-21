import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

import 'package:neumorphic_ui/neumorphic_ui.dart';
import '../note_home/logic.dart';
import 'logic.dart';

class EditPage extends StatelessWidget {
  EditPage({Key? key}) : super(key: key);

  final logic = Get.put(EditLogic());
  final logicNoteHome = Get.put(NoteHomeLogic());
  final state = Get.find<EditLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
      children: [
        Container(
          height: 400,
          width: 360,
          color: Colors.black54,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(children: [
                  Flexible(
                    child: FittedBox(
                      child: Text("32",
                          style: TextStyle(color: Colors.white, fontSize: 40)),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 77,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Flexible(
                    child: FittedBox(
                      child: Text("23",
                          style: TextStyle(color: Colors.white, fontSize: 40)),
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Color(0xff434343),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 16, bottom: 13),
                      child: calcbutton(
                        text: "C",
                        height: 63,
                        fontSize: 30,
                        width: 63,
                        buttoncolor: Color(0xff626262),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(
                           right: 16, bottom: 13),
                      child: calcbutton(
                        text: "%",
                        height: 63,
                        width: 63,
                        buttoncolor: Color(0xff626262),
                        fontSize: 30,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(
                          right: 16, bottom: 13),
                        child: calcbutton(
                          text: "/",
                          height: 63,
                          width: 63,
                          buttoncolor: Color(0xff626262),
                          fontSize: 30,
                        )),
                  Padding(
                      padding: const EdgeInsets.only(
                          right: 16, bottom: 13),
                      child: calcbutton(
                        text: "x",
                        height: 63,
                        width: 63,
                        buttoncolor: Color(0xff626262),
                        fontSize: 25,
                      )),
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 16, bottom: 12),
                      child: calcbutton(
                        text: "7",
                        splashColor:  Color(0xFF737373),
                        height: 63,
                        width: 63,
                        buttoncolor: Color(0xff474747),
                        fontSize: 30,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(
                          right: 16, bottom: 20),
                      child: calcbutton(
                        text: "8",
                        splashColor:  Color(0xFF737373),
                        height: 63,
                        width: 63,
                        buttoncolor: Color(0xff474747),
                        fontSize: 30,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(
                          right: 16, bottom: 20),
                      child: calcbutton(
                        text: "9",
                        splashColor:  Color(0xFF737373),
                        height: 63,
                        width: 63,
                        buttoncolor: Color(0xff474747),
                        fontSize: 30,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(
                          right: 16, bottom: 20,),
                      child: calcbutton(
                        text: "-",
                        height: 63,
                        width: 63,
                        buttoncolor: Color(0xff626262),
                        fontSize: 30,
                      )),
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 16, bottom: 20),
                      child: calcbutton(
                        text: "4",
                        splashColor:  Color(0xFF737373),
                        height: 63,
                        width: 63,
                        buttoncolor: Color(0xff474747),
                        fontSize: 30,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(
                          right: 16, bottom: 20),
                      child: calcbutton(
                        text: "5",
                        splashColor:  Color(0xFF737373),
                        height: 63,
                        width: 63,
                        buttoncolor: Color(0xff474747),
                        fontSize: 30,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(
                          right: 16, bottom: 20),
                      child: calcbutton(
                        text: "6",
                        splashColor:  Color(0xFF737373),
                        height: 63,
                        width: 63,
                        buttoncolor: Color(0xff474747),
                        fontSize: 30,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(
                          right: 16, bottom: 20),
                      child: calcbutton(
                        text: "+",

                        height: 63,
                        width: 63,
                        buttoncolor: Color(0xff626262),
                        fontSize: 30,
                      )),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 16, bottom: 18),
                          child: calcbutton(
                            text: "1",
                            splashColor:  Color(0xFF737373),
                            height: 63,
                            width: 63,
                            buttoncolor: Color(0xff474747),
                            fontSize: 30,
                          )),

                      Padding(
                          padding: const EdgeInsets.only(
                              right: 16,left: 30,bottom: 11 ),
                          child: calcbutton(
                            text: "DEL",
                            height: 63,
                            width: 63,
                            buttoncolor: Color(0xff474747),
                            fontSize: 24,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              right: 16, bottom: 18),
                          child: calcbutton(
                            text: "2",
                            splashColor:  Color(0xFF737373),
                            height: 63,
                            width: 63,
                            buttoncolor: Color(0xff474747),
                            fontSize: 30,
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              right: 16,bottom: 11 ),
                          child: calcbutton(
                            text: "0",
                            splashColor:  Color(0xFF737373),

                            height: 63,
                            width: 63,
                            buttoncolor: Color(0xff474747),
                            fontSize: 30,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              right: 16, bottom: 18),
                          // child: RawMaterialButton(
                          //   onPressed: () {
                          //
                          //   },
                          //   splashColor:  Color(0xFF737373),
                          //   shape: RoundedRectangleBorder(borderRadius:
                          //   BorderRadius.circular(30)),

                            child: calcbutton(
                              text: "3",

                              height: 63,
                              width: 63,
                              buttoncolor: Color(0xff474747),
                              fontSize: 30,
                            ),
                          ),

                      Padding(
                          padding: const EdgeInsets.only(
                              right: 16,bottom: 11 ),
                          child: calcbutton(
                            text: ".",
                            height: 63,
                            splashColor:  Color(0xFF737373),
                            width: 63,
                            buttoncolor: Color(0xff474747),
                            fontSize: 34,
                          )),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          bottom: 12,  left: 5),
                      child:calcbutton(
                      text: "=",
                      splashColor: Color(0xFFFBC78D),
                      width: 57,
                      height: 131,
                       fontSize: 30,
                        buttoncolor:Color(0xFFff9f0A) ,
                                )),
                ],
              ),
            ]),
          ),
        )
      ],
    ));
  }
}

class calcbutton extends StatelessWidget {

  calcbutton({

    super.key,
    required this.text,
    this.buttoncolor,
    this.onTap,
    this.height,
    this.width,
    this.fontSize,
    this.splashColor,

  });

  final String text;
  final Color? buttoncolor;
  final void Function() ?onTap;
  final double? height;
  final double? width;
  final double? fontSize;
  final Color? splashColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap:onTap ,

      child: Container(
        height: height,
        width: width,
        child:
        Neumorphic(
          style: NeumorphicStyle(
              shadowLightColor: Color(0xff474747),
              lightSource: LightSource.bottomLeft,
              shape: NeumorphicShape.convex,
              depth: 4,
              boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.all(Radius.elliptical(26, 26))),
              color: buttoncolor),
          child: Center(
            child: NeumorphicText(
              text,
              style: NeumorphicStyle(
                depth: 0, //customize depth here
                color: Colors.white, //customize color here
              ),
              textStyle: NeumorphicTextStyle(
                fontSize: fontSize, //customize size here
                // AND others usual text style properties (fontFamily, fontWeight, ...)
              ),
            ),
          ),
        ),
      ),
    );
  }
}
