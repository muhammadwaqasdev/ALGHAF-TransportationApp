import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String title;
  final bool isPrimary;
  final Function onTap;
  final double? borderRadius;

  const MainButton(
      {Key? key,
      required this.title,
      this.borderRadius,
      required this.isPrimary,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
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
          children: [
            Text(title,
                textAlign: TextAlign.center,
                style: TextStyling.h3.copyWith(color: AppColors.white)),
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
  final Color? color;

  const SmallButton(
      {Key? key,
      required this.title,
      required this.onTap,
        this.color,
      required this.isPrimary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          color: (color == null) ? isPrimary ? AppColors.primary : AppColors.secondary : color,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 7, horizontal: 16),
        child: FittedBox(
          child: Text(title,
              textAlign: TextAlign.center,
              style: TextStyling.h4.copyWith(color: AppColors.white)),
        ),
      ),
    );
  }
}

class CustomButton extends StatefulWidget {
  final String title;
  final Function onTap;
  final bool isSelected;

  const CustomButton(
      {Key? key,
      required this.title,
      required this.onTap,
      required this.isSelected})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
      width: context.screenSize().width / 6,
      decoration: BoxDecoration(
        color: (widget.isSelected) ? AppColors.white : AppColors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
      child: FittedBox(
          child: Text(
        widget.title,
        textAlign: TextAlign.center,
        style: TextStyling.h4.copyWith(
            color: (widget.isSelected) ? AppColors.green : AppColors.primary),
      )),
    );
  }
}
