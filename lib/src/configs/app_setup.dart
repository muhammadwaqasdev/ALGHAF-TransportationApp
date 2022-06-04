import 'package:AlGhaf/src/services/local/auth_service.dart';
import 'package:AlGhaf/src/services/local/connectivity_service.dart';
import 'package:AlGhaf/src/services/local/keyboard_service.dart';
import 'package:AlGhaf/src/services/local/main_drawer_service.dart';
import 'package:AlGhaf/src/services/remote/api_service.dart';
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
import 'package:AlGhaf/src/views/user/home/home_view.dart';
import 'package:AlGhaf/src/views/user/parcel_delivery/bike_rider_started/bike_rider_started_view.dart';
import 'package:AlGhaf/src/views/user/parcel_delivery/calling_to_bike_rider/calling_to_bike_rider_view.dart';
import 'package:AlGhaf/src/views/user/parcel_delivery/parcel_delivered/parcel_delivered_view.dart';
import 'package:AlGhaf/src/views/user/parcel_delivery/request_parcel/request_parcel_view.dart';
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
