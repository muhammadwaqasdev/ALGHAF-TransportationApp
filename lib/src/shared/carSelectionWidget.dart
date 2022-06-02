import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class CarSelecting extends StatelessWidget {
  final String title;
  final String selectedIcon;
  final String unSelectedIcon;
  final bool isSelected;
  final Function onTap;

  CarSelecting({Key? key, required this.title, required this.selectedIcon, required this.unSelectedIcon, required this.isSelected, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap();
      },
      child: Column(
        children: [
          Container(
            height: 94,
            width: 94,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? AppColors.secondary : AppColors.white,
              boxShadow: [isSelected ? AppColors.boxShadow : BoxShadow()]
            ),
            child: Center(child: Image.asset(isSelected ? selectedIcon : unSelectedIcon,height: 48,width: 48,)),
          ),
          VerticalSpacing(5),
          Text(title, style: TextStyling.h4.copyWith(color: AppColors.white),)
        ],
      ),
    );
  }
}
