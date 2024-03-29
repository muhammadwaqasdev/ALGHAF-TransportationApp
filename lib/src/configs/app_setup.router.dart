// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../views/rider/car_rider/car_rider_home/car_rider_home_view.dart';
import '../views/rider/car_rider/done_car_ride/done_car_ride_view.dart';
import '../views/rider/car_rider/searching_ride/searching_ride_view.dart';
import '../views/rider/car_rider/start_car_ride/start_car_ride_view.dart';
import '../views/rider/rider_account/rider_account_view.dart';
import '../views/rider/rider_forgot_password/rider_forgot_password_view.dart';
import '../views/rider/rider_history/rider_history_view.dart';
import '../views/rider/rider_signin/rider_signin_view.dart';
import '../views/rider/rider_splash/rider_splash_view.dart';
import '../views/rider/rider_wallet/rider_wallet_view.dart';
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
import '../views/user/delivery_request_history/delivery_request_history_view.dart';
import '../views/user/flight_booking/flight_searching/flight_searching_view.dart';
import '../views/user/flight_booking/searched_flight/searched_flight_view.dart';
import '../views/user/home/home_view.dart';
import '../views/user/hotel_booking/hotel_searching/hotel_searching_view.dart';
import '../views/user/hotel_booking/searched_hotel/searched_hotel_view.dart';
import '../views/user/hotel_booking/see_hotel/see_hotel_view.dart';
import '../views/user/parcel_delivery/bike_rider_started/bike_rider_started_view.dart';
import '../views/user/parcel_delivery/calling_to_bike_rider/calling_to_bike_rider_view.dart';
import '../views/user/parcel_delivery/parcel_delivered/parcel_delivered_view.dart';
import '../views/user/parcel_delivery/request_parcel/request_parcel_view.dart';
import '../views/user/ride_history/ride_history_view.dart';
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
  static const String deliveryRequestsAndHistoryView =
      '/delivery-requests-and-history-view';
  static const String rideHistoryView = '/ride-history-view';
  static const String flightSearchingView = '/flight-searching-view';
  static const String searchedFlightView = '/searched-flight-view';
  static const String hotelSearchingView = '/hotel-searching-view';
  static const String searchedHotelView = '/searched-hotel-view';
  static const String seeHotelView = '/see-hotel-view';
  static const String riderSplashView = '/rider-splash-view';
  static const String riderSignInView = '/rider-sign-in-view';
  static const String riderForgotPasswordView = '/rider-forgot-password-view';
  static const String carRiderHomeView = '/car-rider-home-view';
  static const String searchingRideView = '/searching-ride-view';
  static const String startCarRideView = '/start-car-ride-view';
  static const String doneCarRideView = '/done-car-ride-view';
  static const String riderAccountView = '/rider-account-view';
  static const String riderHistoryView = '/rider-history-view';
  static const String riderWalletView = '/rider-wallet-view';
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
    deliveryRequestsAndHistoryView,
    rideHistoryView,
    flightSearchingView,
    searchedFlightView,
    hotelSearchingView,
    searchedHotelView,
    seeHotelView,
    riderSplashView,
    riderSignInView,
    riderForgotPasswordView,
    carRiderHomeView,
    searchingRideView,
    startCarRideView,
    doneCarRideView,
    riderAccountView,
    riderHistoryView,
    riderWalletView,
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
    RouteDef(Routes.deliveryRequestsAndHistoryView,
        page: DeliveryRequestsAndHistoryView),
    RouteDef(Routes.rideHistoryView, page: RideHistoryView),
    RouteDef(Routes.flightSearchingView, page: FlightSearchingView),
    RouteDef(Routes.searchedFlightView, page: SearchedFlightView),
    RouteDef(Routes.hotelSearchingView, page: HotelSearchingView),
    RouteDef(Routes.searchedHotelView, page: SearchedHotelView),
    RouteDef(Routes.seeHotelView, page: SeeHotelView),
    RouteDef(Routes.riderSplashView, page: RiderSplashView),
    RouteDef(Routes.riderSignInView, page: RiderSignInView),
    RouteDef(Routes.riderForgotPasswordView, page: RiderForgotPasswordView),
    RouteDef(Routes.carRiderHomeView, page: CarRiderHomeView),
    RouteDef(Routes.searchingRideView, page: SearchingRideView),
    RouteDef(Routes.startCarRideView, page: StartCarRideView),
    RouteDef(Routes.doneCarRideView, page: DoneCarRideView),
    RouteDef(Routes.doneCarRideView, page: DoneCarRideView),
    RouteDef(Routes.riderAccountView, page: RiderAccountView),
    RouteDef(Routes.riderHistoryView, page: RiderHistoryView),
    RouteDef(Routes.riderWalletView, page: RiderWalletView),
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
    DeliveryRequestsAndHistoryView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DeliveryRequestsAndHistoryView(),
        settings: data,
      );
    },
    RideHistoryView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RideHistoryView(),
        settings: data,
      );
    },
    FlightSearchingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FlightSearchingView(),
        settings: data,
      );
    },
    SearchedFlightView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SearchedFlightView(),
        settings: data,
      );
    },
    HotelSearchingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HotelSearchingView(),
        settings: data,
      );
    },
    SearchedHotelView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SearchedHotelView(),
        settings: data,
      );
    },
    SeeHotelView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SeeHotelView(),
        settings: data,
      );
    },
    RiderSplashView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RiderSplashView(),
        settings: data,
      );
    },
    RiderSignInView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RiderSignInView(),
        settings: data,
      );
    },
    RiderForgotPasswordView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RiderForgotPasswordView(),
        settings: data,
      );
    },
    CarRiderHomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CarRiderHomeView(),
        settings: data,
      );
    },
    SearchingRideView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SearchingRideView(),
        settings: data,
      );
    },
    StartCarRideView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartCarRideView(),
        settings: data,
      );
    },
    DoneCarRideView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DoneCarRideView(),
        settings: data,
      );
    },
    RiderAccountView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RiderAccountView(),
        settings: data,
      );
    },
    RiderHistoryView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RiderHistoryView(),
        settings: data,
      );
    },
    RiderWalletView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RiderWalletView(),
        settings: data,
      );
    },
  };
}
