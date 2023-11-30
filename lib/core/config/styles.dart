import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static const Color colorPrimary = Color(0xFF63B2F2);

  static const Color colorSecondary = Color(0xFF2F455C);

  static const Color colorSecondary2 = Color(0xFF474747);
  static const Color colorTextWhite = Color(0xFFFFFFFF);

  /// text field styles
  static BorderRadius textFieldBorderRadius =
      BorderRadius.all(Radius.circular(textFieldBorderRadiusValue));
  static BorderRadius borderRadius40px = BorderRadius.all(Radius.circular(40));
  static BorderRadius borderRadius30px = BorderRadius.all(Radius.circular(30));
  static BorderRadius borderRadius25px = BorderRadius.all(Radius.circular(25));
  static BorderRadius borderRadius16px = BorderRadius.all(Radius.circular(16));
  static BorderRadius borderRadius14px = BorderRadius.all(Radius.circular(14));
  static BorderRadius borderRadius12px = BorderRadius.all(Radius.circular(12));
  static Radius circularBorderRadius30px = (Radius.circular(30));
  static Radius circularBorderRadius25px = (Radius.circular(25));
  static Radius circularBorderRadius20px = (Radius.circular(20));
  static Radius circularBorderRadius18px = (Radius.circular(18));
  static Radius circularBorderRadius14px = (Radius.circular(14));
  static Radius circularBorderRadius12px = (Radius.circular(12));
  static Radius circularBorderRadius8px = (Radius.circular(8));
  static Radius circularBorderRadius4px = (Radius.circular(4));

  static double textFieldBorderRadiusValue = 29.47.r;
  static double textFieldBorder = 70.r;

  static double textFieldBorderWidth = 1.5;

  static const FontColorWhite = Color(0xFFFFFFFF);
  static const FontColorGray = Color(0xFFBCBCBC);
  static const FontColorDarkGray = Color(0xFF8D9595);
  static const FontColorMidGray = Color(0xFFD9D9D9);

  static const FontColorBlack = Color(0xFF000000);
  static const FontColorPink = Color(0xFFFB36A0);
  static const FontColorRed = Color(0xFFFF5151);
  static const ColorDarkRed = Color(0xFFE11E1E);
  static const FontColorYellowCalender = Color(0xFFCDD100);
  static const ColorYellow = Color(0xFFFFDFA0);
  static const ColorDarkYellow = Color(0xFFC0C48A);
  static const FontColorNiagara = Color(0xFF0FB0A2);
  static const FontColorOrange = Color(0xFFE8833B);
  static const FontColorOrangeLite = Color(0xFFFFA337);
  static const FontColorYellow = Color(0xFFEAC170);
  static const appThemeColor = Color(0xFFE3E935);
  static const FontColorLiteBlack = Color(0xFF707070);
  static const FontColorLiteBlack2 = Color(0xFF474C4E);
  static const FontColorLiteBlack3 = Color(0xFF636363);
  static const FontColorLiteBlack4 = Color(0xFF484D4D);
  static const FontColorLiteBlack5 = Color(0xFF474747);
  static const FontColorBlackDark = Color(0xFF000000);
  static const FontCalendarTodayBlack = Color(0xFF484D4D);
  static const FontCalendarTrailingBlack = Color(0xFFA0A0A0);
  static const ColorCalendarPan = Color(0xFFC4C4C4);
  static const ColorNavyBlue = Color(0xFF1C2B39);
  static const ColorBrightGray = Color(0xFFEEEEEE);
  static const liteGrayColor = Color(0xFF6D7276);
  static const blueDarkColor = Color(0xFF0D47A1);
  static const bluelightColor = Color(0xFF63B2F2);

  static TextStyle get fontStyle => const TextStyle(fontFamily: 'UniviaPro');

  static TextStyle get poppinsFontStyle => GoogleFonts.poppins();

  static const FontFamily = 'UniviaPro';

  //font
  static double get fontSize0 => 80.0.sp; //20

  /// Equals 30 px
  static double get fontSize01 => 65.0.sp; //30

  /// Equals 20 px
  static double get fontSize1 => 55.0.sp; //20

  /// Equals 18 px
  static double get fontSize2 => 50.0.sp; //18

  /// Equals 16 px
  static double get fontSize3 => 45.0.sp; //16

  /// Equals 14 px
  static double get fontSize4 => 40.0.sp; //14

  /// Equals 12 px
  static double get fontSize5 => 35.0.sp; //12

  /// Equals 10 px
  static double get fontSize6 => 30.0.sp; //10

  /// Equals 8 px
  static double get fontSize7 => 26.0.sp; //8

  // font sizes in dp
  static double fontSize25PX = 25.sp;

  static double fontSize20PX = 20.sp;

  static double fontSize19PX = 19.sp;
  static double fontSize16PX = 16.sp;
  static double fontSize14PX = 14.sp;
  static double fontSize13PX = 13.sp;
  static double fontSize12PX = 12.sp;
  static double fontSizeFixed12PX = 12;
  static double fontSize11PX = 11.sp;
  static double fontSize10PX = 10.sp;
}

abstract class CommonSizes {
  /// Mozzaik application sizes
  static const TINY_LAYOUT_W_GAP = 10.0;
  static const SMALL_LAYOUT_W_GAP = 25.0;
  static const MED_LAYOUT_W_GAP = 50.0;
  static const BIG_LAYOUT_W_GAP = 75.0;
  static const BIGGER_LAYOUT_W_GAP = 100.0;
  static const BIGGEST_LAYOUT_W_GAP = 125.0;
  static const BORDER_RADIUS_STANDARD = 15.0;
  static const BORDER_RADIUS_CORNERS_BIG = 18.0;

  static final appBarHeight = 120.h;

  static final navBarHeight = 120.h;

  /// --------------- ///
  static final v1 = SizedBox(height: 1.h);
  static final v2 = SizedBox(height: 2.h);
  static final v4 = SizedBox(height: 4.h);
  static final v5 = SizedBox(height: 5.h);
  static final v7 = SizedBox(height: 7.h);
  static final v10 = SizedBox(height: 10.h);
  static final v15 = SizedBox(height: 15.h);
  static final v20 = SizedBox(height: 20.h);
  static final v25 = SizedBox(height: 25.h);
  static final v30 = SizedBox(height: 30.h);
  static final v35 = SizedBox(height: 35.h);
  static final v40 = SizedBox(height: 40.h);
  static final v50 = SizedBox(height: 50.h);
  static final v60 = SizedBox(height: 60.h);
  static final v70 = SizedBox(height: 70.h);
  static final v80 = SizedBox(height: 80.h);
  static final v90 = SizedBox(height: 90.h);
  static final v100 = SizedBox(height: 100.h);
  static final v120 = SizedBox(height: 120.h);
  static final v130 = SizedBox(height: 130.h);

  static final h2 = SizedBox(width: 2.w);
  static final h5 = SizedBox(width: 5.w);
  static final h10 = SizedBox(width: 10.w);
  static final h13 = SizedBox(width: 13.w);
  static final h15 = SizedBox(width: 15.w);
  static final h17 = SizedBox(width: 17.w);
  static final h19 = SizedBox(width: 19.w);
  static final h20 = SizedBox(width: 20.w);
  static final h25 = SizedBox(width: 25.w);
  static final h30 = SizedBox(width: 30.w);
  static final h40 = SizedBox(width: 40.w);
  static final h50 = SizedBox(width: 50.w);
  static final h55 = SizedBox(width: 55.w);
  static final h60 = SizedBox(width: 60.w);
  static final h70 = SizedBox(width: 70.w);
  static final h80 = SizedBox(width: 80.w);
  static final h90 = SizedBox(width: 90.w);
  static final h100 = SizedBox(width: 100.w);

  static const empty = SizedBox.shrink();

  static const divider = Divider(thickness: 10);
}
