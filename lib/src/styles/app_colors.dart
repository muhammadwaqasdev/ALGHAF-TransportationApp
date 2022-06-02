import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColors {
  AppColors._();

  static HexColor primary = HexColor("#88C665");
  static HexColor secondary = HexColor("#3AC4E7");

  static HexColor primaryLight = HexColor("#C6E0B7");

  static HexColor grey = HexColor("#D6D6D6");
  static HexColor lightGrey = HexColor("#F5F5F5");
  static HexColor black = HexColor("#000000");
  static HexColor white = HexColor("#ffffff");
  static HexColor green = HexColor("#008000");
  static HexColor blue = HexColor("#0057FF");
  static HexColor red = HexColor("#FF0000");
  static HexColor yellow = HexColor("#FDCD03");

  static BoxShadow boxShadow = BoxShadow(
    color: Color(0x3d000000),
    blurRadius: 4,
    offset: Offset(0, 4),
  );
}
