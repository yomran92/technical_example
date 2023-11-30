import 'dart:async';

import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:technical_test/core/config/theme.dart';


import '../../../core/config/assets.dart';
import '../../../core/config/styles.dart';
import '../../../core/feature/presentation/base_controller.dart';
import '../../../core/navigation_service.dart';
import '../../../core/widget/app_image.dart';
import '../../../core/widget/refresh_indecator.dart';
import '../../../core/widget/waiting_widget.dart';
import '../../../injection_container.dart';
import 'blocs/pokemon/pokemon_bloc.dart';
import 'widget/pokemon_item.dart';
import 'widget/seconde_screen_controller.dart';
@RoutePage()
class SecondeScreen extends HookWidget {
  SecondeScreen({Key? key})
      : super(
          key: key,
        ) {
   }

int _pageIndex=0;
  @override
  Widget build(BuildContext context) {
    final bloc = sl<PokemonBloc>();
    final controller =
    Controller.getInstance(instance: SecondeScreenController(bloc:bloc));
     useEffect(() {


      return null;
    }, const []);

     return SafeArea(
      child:
                  Scaffold(
                      backgroundColor: Styles.FontColorWhite,

                      appBar:  AppBar(
                          backgroundColor: Styles.colorPrimary,
                          leading: TextButton(
                            child:AppImage(
                              path:  Assets.backIconSVG, type: ImageType.asset,
                            ),

                            onPressed: () => NavigationService.of(context).pop(),
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              fixedSize: Size(20.w, 25.h),
                              alignment: AlignmentDirectional.centerStart,
                            ),),
                          title: Text(
                              "Pokemons",
                              style:appTheme.textTheme.titleMedium?.copyWith(
                                  fontSize: Styles.fontSize20PX,
                                  color: Styles.colorTextWhite,
                                  fontWeight: FontWeight.w400


                              ))),
                      body:
                   Column(children: [
                     BlocConsumer<PokemonBloc, PokemonState>(
                       bloc: bloc,
                       listener: controller.listener,
                       listenWhen: listenAndBuildWhen,
                       buildWhen: listenAndBuildWhen,
                       builder: (ctx, state) {
                         if (state is GetPokemonsError) {
                           return
                             Container();
                             // AppErrorWidget(
                             // entity: S.of(context).clinics,
                             // actionTitle: S.current.retry,
                             // onAction: controller.getPokemonsEntity,
                           // );
                         } else if (controller.getPokemonsEntity == null) {
                           return const Expanded(child: WaitingWidget());
                         } else if (
                         controller.getPokemonsEntity!.results==null) {
                           return Container();
                         }
                         return Expanded(
                           child:

                           // AppRefreshIndicator(
                           //   onRefresh: () async => controller.getData(),
                           //   loading: state is GetPokemonsLoading,
                           //   color: appTheme.scaffoldBackgroundColor,
                           //   child: ListView.separated(
                           //       padding: EdgeInsets.symmetric(
                           //         vertical: 15.h,
                           //         horizontal: 14.w,
                           //       ),
                           //       // shrinkWrap: true,
                           //       itemCount: controller.getPokemonsEntity!.results==null?0
                           //           :controller.getPokemonsEntity!.results!.length,
                           //       separatorBuilder: (ctx, index) {
                           //         return Padding(
                           //             padding: EdgeInsets.symmetric(horizontal: 15.w),
                           //             child: Divider(
                           //               thickness: 1.h,
                           //               height: 20.h,
                           //             ));
                           //       },
                           //       itemBuilder: (ctx, index) {
                           //         var item = controller.getPokemonsEntity!.results![index];
                           //         return
                           //           PokemonWidget(
                           //             item,
                           //
                           //
                           //         );
                           //       }),
                           // ),
                         Scrollbar(
                               interactive: true,
                               radius: const Radius.circular(10),
                               child: SmartRefresher(
                                 controller: controller.refreshController,
                                 enablePullUp: controller.enablePullUp,
                                 onRefresh: ()  {
                                   _pageIndex=0;
                                   controller.results!.clear();
                                   controller.getRefresh();},
                                 onLoading: () {

                                     _pageIndex++;
                                   controller.getNextPage(_pageIndex);
                                     // _requestEmployees();

                                 },
                                 child: ListView.separated(
                                   addAutomaticKeepAlives: true,
                                   itemBuilder: (context, index) {
                                    var item = controller.results![index];

                                     return  PokemonWidget(
                                                     item,


                                                 );
                                   },
                                   padding:
                                   EdgeInsets.symmetric(vertical: 40.w),
                                   itemCount:  controller.results==null?0: controller.results!.length,
                                   separatorBuilder: (
                                       BuildContext context,
                                       int index,
                                       ) =>
                                       SizedBox(
                                         height: 39.h,
                                       ),
                                 ),
                               ),
                             ),

                         );
                       },
                     ),

                   ],)


                ),

    );
  }

  bool listenAndBuildWhen(pState, cState) {
     return cState is GetPokemonsLoaded ;
  }

  }

  // void _handleError(BuildContext context, SplashError state) {
  //   AppDialogs.showRetryDialog(
  //     context: context,
  //     content: state.message,
  //     retryCallBack: () {
  //       sl<SplashBloc>().add(SplashInitEvent(
  //         context,
  //       ));
  //     },
  //   );
  // }


