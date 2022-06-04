import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class PaymentMethodCardTile extends StatelessWidget {
  final String title;
  final String cardNumber;
  final String icon;
  final bool isSelected;
  final Function onTap;

  const PaymentMethodCardTile({Key? key, required this.title, required this.cardNumber, required this.icon, required this.isSelected, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: context.screenSize().width,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Center(child: Image.asset(icon, height: 24,width: 24,)),
              ),
              HorizontalSpacing(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyling.h4,),
                  Text(cardNumber,style: TextStyling.text.copyWith(color: AppColors.secondary),),
                ],
              )
            ],
          ),
          isSelected ? Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.black,
            ),
            child: Center(
              child: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.secondary,
                ),
              ),
            ),
          ) : SizedBox()
        ],
      ),
    );
  }
}
