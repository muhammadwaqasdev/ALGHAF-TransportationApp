import 'package:AlGhaf/src/services/local/auth_service.dart';
import 'package:AlGhaf/src/services/local/connectivity_service.dart';
import 'package:AlGhaf/src/services/local/keyboard_service.dart';
import 'package:AlGhaf/src/services/local/main_drawer_service.dart';
import 'package:AlGhaf/src/services/remote/api_service.dart';
import 'package:AlGhaf/src/views/rider/car_rider/car_rider_home/car_rider_home_view.dart';
import 'package:AlGhaf/src/views/rider/car_rider/done_car_ride/done_car_ride_view.dart';
import 'package:AlGhaf/src/views/rider/car_rider/searching_ride/searching_ride_view.dart';
import 'package:AlGhaf/src/views/rider/car_rider/start_car_ride/start_car_ride_view.dart';
import 'package:AlGhaf/src/views/rider/rider_account/rider_account_view.dart';
import 'package:AlGhaf/src/views/rider/rider_forgot_password/rider_forgot_password_view.dart';
import 'package:AlGhaf/src/views/rider/rider_history/rider_history_view.dart';
import 'package:AlGhaf/src/views/rider/rider_signin/rider_signin_view.dart';
import 'package:AlGhaf/src/views/rider/rider_splash/rider_splash_view.dart';
import 'package:AlGhaf/src/views/rider/rider_wallet/rider_wallet_view.dart';
import 'package:AlGhaf/src/views/user/auth/code_verify/code_verify_view.dart';
import 'package:AlGhaf/src/views/user/auth/forgot_password/forgot_password_view.dart';
import 'package:AlGhaf/src/views/user/auth/number_verify/number_verify_view.dart';
import 'package:AlGhaf/src/views/user/auth/register/register_view.dart';
import 'package:AlGhaf/src/views/user/auth/signin/signin_view.dart';
import 'package:AlGhaf/src/views/user/car_ride/calling_to_rider/calling_to_rider_view.dart';
import 'package:AlGhaf/src/views/user/car_ride/request_texi/request_texi_view.dart';
import 'package:AlGhaf/src/views/user/car_ride/ride_done/ride_done_view.dart';
import 'package:AlGhaf/src/views/user/car_ride/rider_started/rider_started_view.dart';
import 'package:AlGhaf/src/views/user/car_ride/texi_selection/texi_selection_view.dart';
import 'package:AlGhaf/src/views/user/delivery_request_history/delivery_request_history_view.dart';
import 'package:AlGhaf/src/views/user/flight_booking/flight_searching/flight_searching_view.dart';
import 'package:AlGhaf/src/views/user/flight_booking/searched_flight/searched_flight_view.dart';
import 'package:AlGhaf/src/views/user/home/home_view.dart';
import 'package:AlGhaf/src/views/user/hotel_booking/hotel_searching/hotel_searching_view.dart';
import 'package:AlGhaf/src/views/user/hotel_booking/searched_hotel/searched_hotel_view.dart';
import 'package:AlGhaf/src/views/user/hotel_booking/see_hotel/see_hotel_view.dart';
import 'package:AlGhaf/src/views/user/parcel_delivery/bike_rider_started/bike_rider_started_view.dart';
import 'package:AlGhaf/src/views/user/parcel_delivery/calling_to_bike_rider/calling_to_bike_rider_view.dart';
import 'package:AlGhaf/src/views/user/parcel_delivery/parcel_delivered/parcel_delivered_view.dart';
import 'package:AlGhaf/src/views/user/parcel_delivery/request_parcel/request_parcel_view.dart';
import 'package:AlGhaf/src/views/user/ride_history/ride_history_view.dart';
import 'package:AlGhaf/src/views/user/splash/splash_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: SignInView),
    MaterialRoute(page: RegisterView),
    MaterialRoute(page: ForgotPasswordView),
    MaterialRoute(page: NumberVerifyView),
    MaterialRoute(page: CodeVerifyView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: RequestTexiView),
    MaterialRoute(page: TexiSelectionView),
    MaterialRoute(page: CallingToRiderView),
    MaterialRoute(page: RideStartedView),
    MaterialRoute(page: RideDoneView),
    MaterialRoute(page: RequestParcelView),
    MaterialRoute(page: BikeRiderStartedView),
    MaterialRoute(page: CallingToBikeRiderView),
    MaterialRoute(page: ParcelDeliveredView),
    MaterialRoute(page: DeliveryRequestsAndHistoryView),
    MaterialRoute(page: RideHistoryView),
    MaterialRoute(page: FlightSearchingView),
    MaterialRoute(page: SearchedFlightView),
    MaterialRoute(page: HotelSearchingView),
    MaterialRoute(page: SearchedHotelView),
    MaterialRoute(page: SeeHotelView),
    MaterialRoute(page: RiderSplashView),
    MaterialRoute(page: RiderSignInView),
    MaterialRoute(page: RiderForgotPasswordView),
    MaterialRoute(page: CarRiderHomeView),
    MaterialRoute(page: SearchingRideView),
    MaterialRoute(page: StartCarRideView),
    MaterialRoute(page: DoneCarRideView),
    MaterialRoute(page: RiderAccountView),
    MaterialRoute(page: RiderHistoryView),
    MaterialRoute(page: RiderWalletView),
  ],
  dependencies: [
    // Lazy singletons
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthService),
    LazySingleton(classType: ConnectivityService),
    LazySingleton(classType: KeyboardService),
    LazySingleton(classType: ApiService),
    LazySingleton(classType: MainDrawerService),
  ],
)
class AppSetup {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
