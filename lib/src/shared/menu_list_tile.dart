import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  final String title;
  final Function onTap;

  const MenuTile({Key? key, required this.title, required this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          onTap();
        },
        child: Container(
          padding: EdgeInsets.only(bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style: TextStyling.h4.copyWith(color: AppColors.black),),
              Image.asset(Assets.imagesRightArrowBlack,height: 18,width: 18,)
            ],
          ),
        ),
      );
  }
}
