// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../views/user/auth/code_verify/code_verify_view.dart';
import '../views/user/auth/forgot_password/forgot_password_view.dart';
import '../views/user/auth/number_verify/number_verify_view.dart';
import '../views/user/auth/register/register_view.dart';
import '../views/user/auth/signin/signin_view.dart';
import '../views/user/car_ride/calling_to_rider/calling_to_rider_view.dart';
import '../views/user/car_ride/request_texi/request_texi_view.dart';
import '../views/user/car_ride/ride_done/ride_done_view.dart';
import '../views/user/car_ride/rider_started/rider_started_view.dart';
import '../views/user/car_ride/texi_selection/texi_selection_view.dart';
import '../views/user/home/home_view.dart';
import '../views/user/parcel_delivery/bike_rider_started/bike_rider_started_view.dart';
import '../views/user/parcel_delivery/calling_to_bike_rider/calling_to_bike_rider_view.dart';
import '../views/user/parcel_delivery/parcel_delivered/parcel_delivered_view.dart';
import '../views/user/parcel_delivery/request_parcel/request_parcel_view.dart';
import '../views/user/splash/splash_view.dart';

class Routes {
  static const String splashView = '/';
  static const String signInView = '/sign-in-view';
  static const String registerView = '/register-view';
  static const String forgotPasswordView = '/forgot-password-view';
  static const String numberVerifyView = '/number-verify-view';
  static const String codeVerifyView = '/code-verify-view';
  static const String homeView = '/home-view';
  static const String requestTexiView = '/request-texi-view';
  static const String texiSelectionView = '/texi-selection-view';
  static const String callingToRiderView = '/calling-to-rider-view';
  static const String rideStartedView = '/ride-started-view';
  static const String rideDoneView = '/ride-done-view';
  static const String requestParcelView = '/request-parcel-view';
  static const String bikeRiderStartedView = '/bike-rider-started-view';
  static const String callingToBikeRiderView = '/calling-to-bike-rider-view';
  static const String parcelDeliveredView = '/parcel-delivered-view';
  static const all = <String>{
    splashView,
    signInView,
    registerView,
    forgotPasswordView,
    numberVerifyView,
    codeVerifyView,
    homeView,
    requestTexiView,
    texiSelectionView,
    callingToRiderView,
    rideStartedView,
    rideDoneView,
    requestParcelView,
    bikeRiderStartedView,
    callingToBikeRiderView,
    parcelDeliveredView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashView, page: SplashView),
    RouteDef(Routes.signInView, page: SignInView),
    RouteDef(Routes.registerView, page: RegisterView),
    RouteDef(Routes.forgotPasswordView, page: ForgotPasswordView),
    RouteDef(Routes.numberVerifyView, page: NumberVerifyView),
    RouteDef(Routes.codeVerifyView, page: CodeVerifyView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.requestTexiView, page: RequestTexiView),
    RouteDef(Routes.texiSelectionView, page: TexiSelectionView),
    RouteDef(Routes.callingToRiderView, page: CallingToRiderView),
    RouteDef(Routes.rideStartedView, page: RideStartedView),
    RouteDef(Routes.rideDoneView, page: RideDoneView),
    RouteDef(Routes.requestParcelView, page: RequestParcelView),
    RouteDef(Routes.bikeRiderStartedView, page: BikeRiderStartedView),
    RouteDef(Routes.callingToBikeRiderView, page: CallingToBikeRiderView),
    RouteDef(Routes.parcelDeliveredView, page: ParcelDeliveredView),
  ];

  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    SplashView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashView(),
        settings: data,
      );
    },
    SignInView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInView(),
        settings: data,
      );
    },
    RegisterView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegisterView(),
        settings: data,
      );
    },
    ForgotPasswordView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgotPasswordView(),
        settings: data,
      );
    },
    NumberVerifyView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NumberVerifyView(),
        settings: data,
      );
    },
    CodeVerifyView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CodeVerifyView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    RequestTexiView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RequestTexiView(),
        settings: data,
      );
    },
    TexiSelectionView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TexiSelectionView(),
        settings: data,
      );
    },
    CallingToRiderView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CallingToRiderView(),
        settings: data,
      );
    },
    RideStartedView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RideStartedView(),
        settings: data,
      );
    },
    RideDoneView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RideDoneView(),
        settings: data,
      );
    },
    RequestParcelView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RequestParcelView(),
        settings: data,
      );
    },
    BikeRiderStartedView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BikeRiderStartedView(),
        settings: data,
      );
    },
    CallingToBikeRiderView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CallingToBikeRiderView(),
        settings: data,
      );
    },
    ParcelDeliveredView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ParcelDeliveredView(),
        settings: data,
      );
    },
  };
}
