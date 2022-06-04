import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String title;
  final bool isPrimary;
  final Function onTap;
  final double? borderRadius;
  const MainButton({Key? key,required this.title, this.borderRadius, required this.isPrimary,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap();
      },
      child: Container(
        width: context.screenSize().width,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 100),
          color: isPrimary ? AppColors.primary : AppColors.secondary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyling.h3.copyWith(color: AppColors.white)
            ),
          ],
        ),
      ),
    );
  }
}

class SmallButton extends StatelessWidget {
  final String title;
  final Function onTap;
  final bool isPrimary;

  const SmallButton({Key? key, required this.title, required this.onTap, required this.isPrimary}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap();
      },
      child: Container(
        width: 90,
        decoration: BoxDecoration(
          color: isPrimary ? AppColors.primary : AppColors.secondary,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 7,horizontal: 16),
        child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyling.h3.copyWith(color: AppColors.white)
        ),
      ),
    );
  }
}