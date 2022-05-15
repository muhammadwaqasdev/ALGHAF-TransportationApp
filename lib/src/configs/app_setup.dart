import 'package:al_ghaf/src/services/local/auth_service.dart';
import 'package:al_ghaf/src/services/local/connectivity_service.dart';
import 'package:al_ghaf/src/services/local/keyboard_service.dart';
import 'package:al_ghaf/src/services/remote/api_service.dart';
import 'package:al_ghaf/src/views/user/auth/code_verify/code_verify_view.dart';
import 'package:al_ghaf/src/views/user/auth/forgot_password/forgot_password_view.dart';
import 'package:al_ghaf/src/views/user/auth/number_verify/number_verify_view.dart';
import 'package:al_ghaf/src/views/user/auth/register/register_view.dart';
import 'package:al_ghaf/src/views/user/auth/signin/signin_view.dart';
import 'package:al_ghaf/src/views/user/home/home_view.dart';
import 'package:al_ghaf/src/views/user/splash/splash_view.dart';
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
  ],
)
class AppSetup {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
