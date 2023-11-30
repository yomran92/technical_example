import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/config/styles.dart';
import '../../../../core/feature/presentation/base_controller.dart';

class FirstScreenController extends Controller {
  FirstScreenController(

      );



  static const BoxDecoration initBoxDecoration=       BoxDecoration(

    shape:  BoxShape.rectangle,
    color: Styles.blueDarkColor,

  )
  ;

   static const _countDownDuration = 12;
  final ValueNotifier<int> secondsNotifier = ValueNotifier(_countDownDuration);
  final ValueNotifier<BoxDecoration> boxDecoration =
  ValueNotifier(initBoxDecoration);

  @override
  void init() {
    super.init();
    secondsNotifier.value = _countDownDuration;
    boxDecoration.value=initBoxDecoration;
  }
List<BoxDecoration> listDecoration=[
  const  BoxDecoration(

    shape:  BoxShape.rectangle,
    color: Styles.blueDarkColor,

  ),

  BoxDecoration(

    shape:  BoxShape.rectangle,

    color: Styles.bluelightColor,

    borderRadius:BorderRadius.all(
        Radius.circular(
          48.r,
        ) ) ,
  ) ,
    BoxDecoration(

        // shape:  BoxShape.rectangle,
    color: Styles.ColorDarkRed,
  borderRadius:BorderRadius.all(
  Radius.circular(
  355.r,
  ))
  )];
callFuntion(int index){
  boxDecoration.value
  =
       listDecoration[index];
}



  @override
  void dispose() {
     super.dispose();
  }

 }
