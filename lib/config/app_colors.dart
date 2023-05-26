import 'package:flutter/material.dart';

class PsColors {
  PsColors._();

  ///
  /// Main Color
  ///
  static Color mainColor = const Color(0xff1F052E);
  static Color backgroundColor = const Color(0xffF5F5F5);
  static Color formBg = const Color(0xffFAF6F2);
  static Color formHintColor = const Color(0xff354052);
  static Color homeBorderColor = const Color(0xffDBDFE4);
  static Color homeLittleBorderColor = const Color(0xffC374F1);
  static Color homeLittlecinColor = const Color(0xff3E095D);
  static Color homeConTextrColor = const Color(0xffA7AFBE);
  static Color homeConTransferTextColor = const Color(0xff0A2926);
  static Color homeConTopUpTextColor = const Color(0xff8013BF);
  static Color homeConXchangeTextColor = const Color(0xff93094C);
  static Color percentTextColor = const Color(0xff667085);
  static Color percentBgColor = const Color(0xffF1F1F1);
  static Color homeSecConTextColor = const Color(0xff576275);
  static Color pendingTextColor = const Color(0xffF79009);
  static Color modalTextColor = const Color(0xff414958);
  static Color modalText2Color = const Color(0xff344054);
  static Color bizTextColor = const Color(0xff0A2926);
  static Color tabBarTextColor = const Color(0xff576275);

  static Color whiteColor = Colors.white;
  static Color blackColor = Colors.black;
  static Color redColor = Colors.red;

  static Color boxShadowColor = const Color.fromRGBO(0, 0, 0, 0.05);

  static void loadColor2(bool isLightMode) {
    if (isLightMode) {
      _loadLightColors();
    } else {
      _loadDarkColors();
    }
  }

  static void _loadDarkColors() {
    ///
    /// Main Color
    ///
    mainColor = mainColor;
    whiteColor = Colors.white;
    blackColor = Colors.black;
  }

  static void _loadLightColors() {
    mainColor = mainColor;
    whiteColor = Colors.white;
    blackColor = Colors.black;
  }
}
