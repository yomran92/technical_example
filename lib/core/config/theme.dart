import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_test/core/config/styles.dart';



final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Styles.colorPrimary,
  ),
   fontFamily: Styles.FontFamily,
  brightness: Brightness.light,
  primaryColor: Styles.colorPrimary,
  primaryColorLight: Styles.colorPrimary,
  primaryColorDark: Styles.colorPrimary,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Styles.colorSecondary,
       textStyle: TextStyle(
          color: Styles.colorSecondary,
          fontWeight: FontWeight.w700,
          fontSize: Styles.fontSize16PX),
      padding: EdgeInsets.symmetric(
        horizontal: 35.h,
        vertical: 15.w,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.r),
      ),
      shadowColor: Colors.transparent,
      elevation: 0,
    ),
  ),
  // canvasColor: Color(0xfffafafa),
   dividerTheme: DividerThemeData(
    color: const Color(0xFFD9D9D9),
    thickness: 1.h,
  ),
  highlightColor: const Color(0x66bcbcbc),
  splashColor: const Color(0x66c8c8c8),

  disabledColor: const Color(0x61000000),
  secondaryHeaderColor: Styles.colorSecondary,
  textSelectionTheme: const TextSelectionThemeData(
    selectionColor: Color(0xff9fa8da),
    cursorColor: Color(0xff4285f4),
    selectionHandleColor: Color(0xff7986cb),
  ),
  dialogBackgroundColor: Colors.transparent,
  indicatorColor: const Color(0xff3f51b5),
  hintColor: const Color(0x8a000000),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    minWidth: 88,
    height: 36,
    padding: const EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: const RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    alignedDropdown: false,
    buttonColor: const Color(0xffe0e0e0),
    disabledColor: const Color(0x61000000),
    highlightColor: const Color(0x29000000),
    splashColor: const Color(0x1f000000),
    focusColor: const Color(0x1f000000),
    hoverColor: const Color(0x0a000000),
    colorScheme: ColorScheme(
      primary: Styles.colorPrimary,
      secondary: Styles.colorSecondary,
      surface: const Color(0xffc6c4c4),
       error: const Color(0xFFE91717),
      onPrimary: Styles.colorPrimary.withAlpha(56),
      onSecondary: Styles.colorSecondary.withAlpha(56),
      onSurface: const Color(0xffc6c4c4).withAlpha(56),
      onBackground: Styles.FontColorWhite.withAlpha(56),
      onError: const Color(0xFFE91717).withAlpha(56),
      brightness: Brightness.light, background: Styles.FontColorWhite,
    ),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: Styles.colorSecondary,
      fontSize: Styles.fontSize19PX, // 19px
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    displayMedium: TextStyle(
      color: Styles.colorSecondary,
      fontSize: Styles.fontSize16PX, // 16px
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    displaySmall: TextStyle(
      color: Styles.colorSecondary,
      fontSize: Styles.fontSize13PX, // 13 px,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    headlineMedium: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize12PX, // 12 px,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    headlineSmall: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize10PX, // 10 px,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    bodyLarge: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize19PX, // 19px
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyMedium: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize14PX, // 14 px,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodySmall: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize13PX, // 13 px,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    labelLarge: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize16PX, // 16px
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    labelMedium: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize13PX, // 13 px,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    labelSmall: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize10PX, // 10 px,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    titleLarge: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize19PX, // 19px
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
  ),
  primaryTextTheme: TextTheme(
    displayLarge: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize19PX, // 19px
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    displayMedium: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize16PX, // 16px
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    displaySmall: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize13PX, // 13 px,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    headlineMedium: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize12PX, // 12 px,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    headlineSmall: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize10PX, // 10 px,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    bodyLarge: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize19PX, // 19px
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyMedium: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize14PX, // 14 px,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodySmall: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize13PX, // 13 px,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    labelLarge: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize16PX, // 16px
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    labelMedium: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize13PX, // 13 px,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    labelSmall: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize10PX, // 10 px,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    titleLarge: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize19PX, // 19px
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleMedium: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize16PX, // 16px
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleSmall: TextStyle(
      color: Styles.FontColorLiteBlack5,
      fontSize: Styles.fontSize13PX, // 13px
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      color: Styles.colorSecondary2,
      fontSize: Styles.fontSize14PX, // 14 px
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    hintStyle: TextStyle(
      color: Styles.liteGrayColor,
      fontSize: Styles.fontSize14PX, // 14 px
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    helperStyle: TextStyle(
       fontSize: Styles.fontSize14PX, // 14 px
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorStyle: TextStyle(
      color: Styles.FontColorRed,
      fontSize: Styles.fontSize10PX, // 10 px,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorMaxLines: null,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    isDense: false,
    // contentPadding: EdgeInsets.only(top: 12, bottom: 12, left: 10.w, right: 10.w),
    contentPadding: EdgeInsetsDirectional.fromSTEB(22.w, 0, 0, 0),
    isCollapsed: false,
    prefixStyle: TextStyle(
      color: Styles.liteGrayColor,
      fontSize: Styles.fontSize14PX, // 14 px
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    suffixStyle: TextStyle(
      color: Styles.liteGrayColor,
      fontSize: Styles.fontSize14PX, // 14 px
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    counterStyle: TextStyle(
      color: Styles.liteGrayColor,
      fontSize: Styles.fontSize14PX, // 14 px
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    filled: true,
    fillColor: Colors.white,
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Styles.FontColorRed,
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(Styles.textFieldBorderRadiusValue)),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Styles.colorPrimary,
          width: Styles.textFieldBorderWidth,
          // strokeAlign: StrokeAlign.center,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            Styles.textFieldBorder,
          ),
        )),
    focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Styles.ColorDarkRed,
          width: Styles.textFieldBorderWidth,
          // strokeAlign: StrokeAlign.center,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            Styles.textFieldBorder,
          ),
        )),
    disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
          width: Styles.textFieldBorderWidth,
          // strokeAlign: StrokeAlign.center,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            Styles.textFieldBorder,
          ),
        )),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
          width: Styles.textFieldBorderWidth,
          // strokeAlign: StrokeAlign.center,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            Styles.textFieldBorder,
          ),
        )),
    border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
          width: Styles.textFieldBorderWidth,
          // strokeAlign: StrokeAlign.center,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            Styles.textFieldBorder,
          ),
        )),
    // constraints: BoxConstraints()
  ),
  iconTheme: const IconThemeData(
    color: Color(0xdd000000),
    opacity: 1,
    size: 24,
  ),
  primaryIconTheme: const IconThemeData(
    color: Color(0xffffffff),
    opacity: 1,
    size: 24,
  ),
  sliderTheme: const SliderThemeData(
    activeTrackColor: null,
    inactiveTrackColor: null,
    disabledActiveTrackColor: null,
    disabledInactiveTrackColor: null,
    activeTickMarkColor: null,
    inactiveTickMarkColor: null,
    disabledActiveTickMarkColor: null,
    disabledInactiveTickMarkColor: null,
    thumbColor: null,
    disabledThumbColor: null,
    thumbShape: null,
    overlayColor: null,
    valueIndicatorColor: null,
    valueIndicatorShape: null,
    showValueIndicator: null,
    valueIndicatorTextStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: Color(0xffffffff),
    unselectedLabelColor: Color(0xb2ffffff),
  ),
  chipTheme: const ChipThemeData(
    backgroundColor: Color(0xffffffff),
    brightness: Brightness.light,
    deleteIconColor: Color(0xde000000),
    disabledColor: Color(0x0c000000),
    labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
    labelStyle: TextStyle(
      color: Color(0xde000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
    secondaryLabelStyle: TextStyle(
      color: Color(0x3d000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    secondarySelectedColor: Color(0x3d3f51b5),
    selectedColor: Color(0x3d000000),
    shape: StadiumBorder(
        side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    )),
  ),
  dialogTheme: const DialogTheme(
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(0.0)),
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff3949ab);
      }
      return null;
    }),
  ),
  radioTheme: RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff3949ab);
      }
      return null;
    }),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff3949ab);
      }
      return null;
    }),
    trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff3949ab);
      }
      return null;
    }),
  ),
  bottomAppBarTheme: BottomAppBarTheme(color: const Color(0xffffffff)),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.indigo,
  )
      .copyWith(
        secondary: Styles.colorSecondary,
      )
      .copyWith(background: const Color(0xff9fa8da))
      .copyWith(error: const Color(0xffd32f2f)),
);
