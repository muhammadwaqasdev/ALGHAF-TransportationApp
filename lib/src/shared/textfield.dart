import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  bool? isPassword;
  final String hint;
  final TextEditingController controller;
  final double? width;
  final Function onTap;
  final TextInputType? inputType;
  final ValueChanged<String>? onChanged;
  final String? errorMessage;

  CustomInput(
      {Key? key,
        this.isPassword,
        required this.controller,
        required this.onTap,
        required this.hint,
        this.onChanged,
        this.width,
        this.errorMessage,
        this.inputType})
      : super(key: key);

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? context.screenSize().width,
      padding: EdgeInsets.fromLTRB(20, 0, 21, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: AppColors.white,
      ),
      child: TextFormField(
        onTap: () {
          widget.onTap();
        },
        onChanged: (val){
          widget.onChanged!(val);
        },
        validator: (val) {
          return val!.isEmpty ? widget.errorMessage : null;
        },
        keyboardType: widget.inputType ?? TextInputType.text,
        textInputAction: TextInputAction.next,
        controller: widget.controller,
        obscureText: widget.isPassword ?? false,
        obscuringCharacter: "#",
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hint,
          hintStyle: TextStyling.text.copyWith(color: AppColors.grey),
          contentPadding: EdgeInsets.fromLTRB(0, 15, 57, 12),
          suffixIcon: (widget.isPassword == true)
              ? InkWell(
            onTap: () {
              setState(
                    () {
                  widget.isPassword = false;
                },
              );

            },
            child: Icon(
              Icons.visibility_off_outlined,
              color: AppColors.secondary,
              size: 22,
            ),
          ) : (widget.isPassword == false) ? InkWell(
            onTap: () {
              setState(
                    () {
                  widget.isPassword = true;
                },
              );
            },
            child: Icon(
              Icons.visibility_outlined,
              color: AppColors.secondary,
              size: 22,
            ),
          ) : null,
        ),
        style: TextStyling.text,
      ),
    );
  }
}