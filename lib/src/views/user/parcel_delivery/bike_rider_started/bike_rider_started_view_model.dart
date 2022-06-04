import 'dart:async';

import 'package:AlGhaf/src/models/user_models/directions_model.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/services/remote/base/api_view_model.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

class BikeRiderStartedViewModel extends ReactiveViewModel with ApiViewModel {
  bool isRideDone = false;
  TextEditingController originLocation = TextEditingController();
  TextEditingController destinationLocation = TextEditingController();
  final initialCameraPosition =
      CameraPosition(target: LatLng(24.939725, 67.023667), zoom: 30);

  GoogleMapController? mapController;

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

  void init() async {
    await Future.delayed(Duration(seconds: 30));
    NavService.parcelDelivered();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [];
}
