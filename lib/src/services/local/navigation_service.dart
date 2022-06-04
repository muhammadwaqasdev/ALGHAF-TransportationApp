import 'package:AlGhaf/src/configs/app_setup.locator.dart';
import 'package:AlGhaf/src/configs/app_setup.router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class NavService {
  static NavigationService? _navigationService = locator<NavigationService>();

  // key
  static GlobalKey<NavigatorState>? get key => StackedService.navigatorKey;

  // key for nested navigator to be used in SplashView
  static final _splashViewNavigatorId = 0;

  static GlobalKey<NavigatorState>? get nestedNavKey =>
      StackedService.nestedNavigationKey(_splashViewNavigatorId);

  // on generate route
  static Route<dynamic>? Function(RouteSettings) get onGenerateRoute =>
      StackedRouter().onGenerateRoute;

  // nested routes with args for root navigator
  static Future<dynamic>? splash({dynamic arguments}) => _navigationService!
      .clearStackAndShow(Routes.splashView, arguments: arguments);

  static Future<dynamic>? signIn({dynamic arguments}) => _navigationService!
      .clearStackAndShow(Routes.signInView, arguments: arguments);

  static Future<dynamic>? register({dynamic arguments}) => _navigationService!
      .clearStackAndShow(Routes.registerView, arguments: arguments);

  static Future<dynamic>? forgotPassword({dynamic arguments}) => _navigationService!
      .navigateTo(Routes.forgotPasswordView, arguments: arguments);

  static Future<dynamic>? numberVerify({dynamic arguments}) => _navigationService!
      .navigateTo(Routes.numberVerifyView, arguments: arguments);

  static Future<dynamic>? codeVerify({dynamic arguments}) => _navigationService!
      .navigateTo(Routes.codeVerifyView, arguments: arguments);

  static Future<dynamic>? home({dynamic arguments}) => _navigationService!
      .clearStackAndShow(Routes.homeView, arguments: arguments);

  static Future<dynamic>? requestTexi({dynamic arguments}) => _navigationService!
      .navigateTo(Routes.requestTexiView, arguments: arguments);

  static Future<dynamic>? texiSelection({dynamic arguments}) => _navigationService!
      .navigateTo(Routes.texiSelectionView, arguments: arguments);

  static Future<dynamic>? callingToRider({dynamic arguments}) => _navigationService!
      .navigateTo(Routes.callingToRiderView, arguments: arguments);

  static Future<dynamic>? rideStarted({dynamic arguments}) => _navigationService!
      .navigateTo(Routes.rideStartedView, arguments: arguments);

  static Future<dynamic>? rideDone({dynamic arguments}) => _navigationService!
      .clearStackAndShow(Routes.rideDoneView, arguments: arguments);
}
