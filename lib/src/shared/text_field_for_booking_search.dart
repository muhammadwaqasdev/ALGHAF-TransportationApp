import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class TextFieldForBooking extends StatefulWidget {
  final String hint;
  final String title;
  final TextEditingController controller;
  final double? width;
  final Function onTap;
  final TextInputType? inputType;
  final ValueChanged<String>? onChanged;
  final String? errorMessage;
  final bool isVisible;

  const TextFieldForBooking({Key? key, required this.hint,this.isVisible =true, required this.title, required this.controller, this.width, required this.onTap, this.inputType, this.onChanged, this.errorMessage}) : super(key: key);

  @override
  State<TextFieldForBooking> createState() => _TextFieldForBookingState();
}

class _TextFieldForBookingState extends State<TextFieldForBooking> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.isVisible,
      child: SizedBox(
        width: widget.width ?? context.screenSize().width / 3.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title,style: TextStyling.h4.copyWith(color: AppColors.grey),),
            TextFormField(
              onTap: () {
                widget.onTap();
              },
              onChanged: (val) {
                widget.onChanged!(val);
              },
              validator: (val) {
                return val!.isEmpty ? widget.errorMessage : null;
              },
              keyboardType: widget.inputType ?? TextInputType.text,
              textInputAction: TextInputAction.next,
              controller: widget.controller,
              decoration: InputDecoration(
                hintText: widget.hint,
                hintStyle: TextStyling.h4.copyWith(color: AppColors.grey),
              ),
              style: TextStyling.h4.copyWith(color: AppColors.black),
            ),
          ],
        ),
      ),
    );
  }
}
