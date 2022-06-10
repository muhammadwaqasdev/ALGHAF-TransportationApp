import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:flutter/material.dart';

class MiniToggleBtn extends StatefulWidget {
  final Function onTap;
  bool isToggled;

  MiniToggleBtn({Key? key, required this.onTap,required this.isToggled}) : super(key: key);

  @override
  State<MiniToggleBtn> createState() => _MiniToggleBtnState();
}

class _MiniToggleBtnState extends State<MiniToggleBtn> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        this.setState(() {
          widget.onTap();
        });
      },
      child: Container(
          height: 31,
          width: 65,
          decoration: BoxDecoration(
              color: AppColors.grey,
              boxShadow: [AppColors.boxShadow],
              borderRadius: BorderRadius.circular(30),),
          child: Stack(
            children: [
              (widget.isToggled)
                  ? AnimatedPositioned(
                      duration: Duration(milliseconds: 2000),
                      top: 0,
                      bottom: 0,
                      right: 0,
                      child: InkWell(
                        onTap: () {
                          this.setState(() {
                            widget.onTap();
                          });
                        },
                        child: Container(
                          height: 15,
                          width: 15,
                          margin: EdgeInsets.only(right: 10, top: 8, bottom: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.transparent,
                            border: Border.all(color: AppColors.green,width: 2),
                          ),
                        ),
                      ),
                    )
                  : AnimatedPositioned(
                      duration: Duration(milliseconds: 2000),
                      top: 0,
                      bottom: 0,
                      left: 0,
                      child: InkWell(
                        onTap: () {
                        },
                        child: Container(
                          height: 15,
                          width: 15,
                          margin: EdgeInsets.only(left: 10, top: 8, bottom: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.transparent,
                            border: Border.all(color: AppColors.red,width: 2),
                          ),
                        ),
                      ),
                    ),
            ],
          )),
    );
  }
}
