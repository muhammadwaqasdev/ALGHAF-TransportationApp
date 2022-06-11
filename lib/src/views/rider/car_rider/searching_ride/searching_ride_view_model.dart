import 'dart:async';

import 'package:AlGhaf/src/models/user_models/directions_model.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/services/remote/base/api_view_model.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

class SearchingRideViewModel extends ReactiveViewModel with ApiViewModel {
  bool isCashSelected = true;

  bool isToggled = false;
  bool carSelectedExclusive = true;
  bool isInitStage = true;
  TextEditingController originLocation = TextEditingController();
  TextEditingController destinationLocation = TextEditingController();
  final initialCameraPosition =
      CameraPosition(target: LatLng(24.939725, 67.023667), zoom: 11.5);

  GoogleMapController? mapController;

  bool isLocationSelected() {
    if (destinationLocation.value.text.isNotEmpty) {
      return true;
    }
    notifyListeners();
    return false;
  }
  bool startSearch = false;

  StartSearching() async {
    await Future.delayed(Duration(seconds: 10));
    startSearch = true;
    notifyListeners();
    await Future.delayed(Duration(seconds: 10));
    NavService.startCarRide();
  }

  Directions? info;
  Marker origin = Marker(
    markerId: MarkerId("origin"),
    infoWindow: InfoWindow(title: "Origin"),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(24.925115, 67.036524),
  );
  Marker destination = Marker(
    markerId: MarkerId("origin"),
    infoWindow: InfoWindow(title: "Origin"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(24.902118, 67.036522),
  );
  Polyline directionPolyline = Polyline(
    polylineId: const PolylineId('overview_polyline'),
    color: AppColors.red,
    width: 5,
    points: [
      LatLng(24.925115, 67.036524),
      LatLng(24.902118, 67.036522),
    ],
  );

  Future<void> init() async {

  }

  void addMarker(LatLng pos) async {
    if (origin == null || (origin != null && destination != null)) {
      // Origin is not set OR Origin/Destination are both set
      // Set origin
      origin = Marker(
        markerId: const MarkerId('origin'),
        infoWindow: const InfoWindow(title: 'Origin'),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        position: pos,
      );

      notifyListeners();
    } else {
      // Origin is already set
      // Set destination
      destination = Marker(
        markerId: const MarkerId('destination'),
        infoWindow: const InfoWindow(title: 'Destination'),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        position: pos,
      );

      final directions = await runBusyFuture(
          apiService.getDirections(origin: origin.position, destination: pos));
      info = directions!;
      notifyListeners();
    }
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [];
}
