import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String title;
  final bool isPrimary;
  final Function onTap;
  const MainButton({Key? key,required this.title,required this.isPrimary,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap();
      },
      child: Container(
        width: context.screenSize().width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: isPrimary ? AppColors.primary : AppColors.secondary,
        ),
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 18, ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyling.h2.copyWith(color: AppColors.white)
            ),
          ],
        ),
      ),
    );
  }
}