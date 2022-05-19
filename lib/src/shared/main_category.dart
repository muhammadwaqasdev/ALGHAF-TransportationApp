import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class MainCategory extends StatelessWidget {
  final String logo, title;
  final Function onTap;

  const MainCategory({Key? key, required this.logo, required this.onTap, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap();
      },
      child: Column(
        children: [
          Container(
            height: 84,
            width: 84,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3d000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
                color: AppColors.white
            ),
            child: Center(child: Image.asset(logo,height: 36,width: 36,)),
          ),
          VerticalSpacing(),
          Text(title,style: TextStyling.h4.copyWith(color: AppColors.white),)
        ],
      ),
    );
  }
}
