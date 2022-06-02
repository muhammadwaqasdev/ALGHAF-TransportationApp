import 'package:package_info/package_info.dart';

enum Env {
  user_prod,
  rider_prod,
  admin_prod,
}

class FlavorService {
  FlavorService._();

  static Env? env;

  static init(PackageInfo info) {
    final flavor = info.packageName.split(".").last;
    switch(flavor) {
      case 'user': {
        env = Env.user_prod;
      }
      break;

      case 'rider': {
        env = Env.rider_prod;
      }
      break;

      case 'admin': {
        env = Env.admin_prod;
      }
      break;
    }
  }

  static String get getGoogleMapBaseApi {
    return "https://maps.googleapis.com/maps/";
  }
}
