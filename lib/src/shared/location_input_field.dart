import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class LocationInputField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final double? width;
  final Function onTap;
  final TextInputType? inputType;
  final ValueChanged<String>? onChanged;
  final String? errorMessage;
  final String icon;

  LocationInputField({Key? key, required this.hint, required this.icon, required this.controller, this.width, required this.onTap, this.inputType, this.onChanged, this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? context.screenSize().width,
      padding: EdgeInsets.fromLTRB(20, 0, 21, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
      ),
      child: TextFormField(
        onTap: () {
          onTap();
        },
        onChanged: (val){
          onChanged!(val);
        },
        validator: (val) {
          return val!.isEmpty ? errorMessage : null;
        },
        keyboardType: inputType ?? TextInputType.text,
        textInputAction: TextInputAction.next,
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyling.text.copyWith(color: AppColors.grey),
          contentPadding: EdgeInsets.fromLTRB(0, 15, 57, 12),
          prefixIcon: Container(
            padding: EdgeInsets.only(right: 8),
            margin: EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              border: Border(right: BorderSide(color: AppColors.grey)),
            ),
            child: Image.asset(icon,height: 24,width: 24,),
          ),
          prefixIconConstraints: BoxConstraints(
            minHeight: 12,
            minWidth: 12
          )
        ),
        style: TextStyling.text,
      ),
    );
  }
}
