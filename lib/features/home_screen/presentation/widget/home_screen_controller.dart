import 'dart:async';
import 'package:flutter/material.dart';
import '../../../../core/feature/presentation/base_controller.dart';

class HomeScreenController extends Controller {
  HomeScreenController(

      );
  late Timer _timer;
  static const _countDownDuration = 3;
   final ValueNotifier<bool> isCountingDownNotifier = ValueNotifier(true);

  @override
  void init() {
    super.init();
    startTimer();
  }

  void startTimer() {
    isCountingDownNotifier.value = false;

    _timer = Timer.periodic(
      const Duration(seconds: 3),
          (_) {

        _timer.cancel();
        isCountingDownNotifier.value = true;


      },
    );
  }



  // Future<void> listener(
  //     PatientProfileBloc bloc, ProfileState current, BuildContext context) async {
  //   if (current is VerifyNewPhoneLoading) {
  //     LoadingOverlay.of(context).show();
  //   } else {
  //     if (current is VerifyNewPhoneSuccess) {
  //       sl<AppStateModel>().updatePhoneDateForPatient(patientId.toString(),DateTime.now().toString());
  //       await LoadingOverlay.of(context).hide(success: true).then((value) =>
  //           NavigationService.of(context).pop());
  //       bloc.add(GetProfileEvent(false));
  //     } else {
  //       LoadingOverlay.of(context).hide(success: false);
  //       showVerifyCodeErrorDialog(context, current.message ?? '');
  //     }
  //   }
  // }
  //
  //

  @override
  void dispose() {
     _timer.cancel();
    super.dispose();
  }

 }
