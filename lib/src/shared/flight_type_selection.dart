import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class FlightTypeSelection extends StatelessWidget {
  final String title;
  final Function onTap;
  final bool isSelected;

  const FlightTypeSelection(
      {Key? key,
      required this.title,
      required this.onTap,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        decoration: BoxDecoration(
          border: isSelected
              ? Border.all(color: AppColors.white)
              : Border.fromBorderSide(BorderSide.none),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Text(
          title,
          style: TextStyling.text.copyWith(
              color: isSelected ? AppColors.white : AppColors.lightGrey),
        ),
      ),
    );
  }
}
