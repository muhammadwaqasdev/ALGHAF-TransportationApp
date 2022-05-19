import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/views/user/drawer_main/drawer_main_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DrawerMainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DrawerMainViewModel>.reactive(
        builder: (context, model, child) {
          return AppScreen(
              body: Text("Menu"));
        },
        viewModelBuilder: () => DrawerMainViewModel(),);
  }
}
