import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_test/core/config/theme.dart';
import 'package:technical_test/core/widget/app_image.dart';

import '../../../../core/config/styles.dart';
import '../../data/remote/models/responses/get_pokemons_response.dart';

class PokemonWidget extends HookWidget {
  const PokemonWidget(this.item, {Key? key, this.loading = false})
      : super(key: key);
  final PokemonModel item;
  final bool online = true;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(14.r),
        ),
        boxShadow: [
          BoxShadow(
            color: Styles.FontColorBlackDark.withOpacity(0.25),
            spreadRadius: 3,
            blurRadius: 4,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppImage(
            type: ImageType.network,
            path:
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/${item.url}.png',
            height: 138.r,
            width: 138.r,
          ),
          Container(
            padding: EdgeInsetsDirectional.only(start: 5.w, top: 10.w),
            child: Text(
              item.name ?? "",
              style: appTheme.textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}
