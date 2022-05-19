import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class NumericPad extends StatelessWidget {
  final Function(int) onNumberSelected;
  final Function() onTap;
  final bool isValidate;

  NumericPad({required this.onNumberSelected, required this.onTap,required this.isValidate});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.11,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildNumber(1),
                buildNumber(2),
                buildNumber(3),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.11,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildNumber(4),
                buildNumber(5),
                buildNumber(6),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.11,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildNumber(7),
                buildNumber(8),
                buildNumber(9),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.11,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildBackspace(),
                buildNumber(0),
                buildDoneBtn(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNumber(int number) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onNumberSelected(number);
        },
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Material(
            elevation: 0.3,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            shadowColor: Color(0xFFF5F4F9),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Center(
                child: Text(
                  number.toString(),
                  style: TextStyling.h2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBackspace() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onNumberSelected(-1);
        },
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Material(
            elevation: 0.3,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            shadowColor: Color(0xFFF5F4F9),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Center(
                  child: Image.asset(
                Assets.imagesRemove,
                height: 17,
                width: 17,
              )),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDoneBtn() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          //use Navigator
          onTap();
        },
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Material(
            elevation: 0.3,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            shadowColor: Color(0xFFF5F4F9),
            child: Container(
              decoration: BoxDecoration(
                color: (isValidate == true) ? AppColors.primary : AppColors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Center(
                  child: Image.asset(
                    Assets.imagesRightArrowWhite,
                    height: 20,
                    width: 8,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
