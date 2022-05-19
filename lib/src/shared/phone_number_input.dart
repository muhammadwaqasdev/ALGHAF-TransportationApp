import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneNumberInput extends StatelessWidget {
  final String phoneNumber;

  const PhoneNumberInput({Key? key, required this.phoneNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shadowColor: Color(0xFFF5F4F9),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        alignment: Alignment.center,
        height: 77,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(15)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(47)),
              //padding: EdgeInsets.symmetric(vertical: 4,horizontal: 11),
              child: CountryCodePicker(
                onChanged: print,
                initialSelection: 'PK',
                favorite: ['+92', 'PK'],
                showFlag: true,
                showDropDownButton: true,
                hideMainText: true,
                alignLeft: true,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 24, 18, 24),
              child: Text(phoneNumber,
                  style: TextStyling.h2),
            )
          ],
        ),
      ),
    );
  }
}
