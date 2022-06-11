import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  final String title;
  final Function onTap;

  const MenuTile({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyling.h4.copyWith(color: AppColors.green),
            ),
            Icon(
              Icons.chevron_right,
              color: AppColors.green,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}

class AccountMenu extends StatelessWidget {
  final String title;
  final Function onTap;

  const AccountMenu({Key? key, required this.title, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Column(
        children: [
          VerticalSpacing(20),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyling.h4.copyWith(color: AppColors.primary),
                ),
                Icon(
                  Icons.chevron_right,
                  color: AppColors.primary,
                  size: 18,
                ),
              ],
            ),
          ),
          Container(height: 1,color: AppColors.primary,),
          VerticalSpacing(22)
        ],
      ),
    );
  }
}
