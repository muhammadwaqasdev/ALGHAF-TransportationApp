import 'dart:async';

import 'package:AlGhaf/src/models/user_models/directions_model.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

class RequestTexiViewModel extends BaseViewModel {
  TextEditingController originLocation = TextEditingController();
  TextEditingController destinationLocation = TextEditingController();
  final initialCameraPosition =
      CameraPosition(target: LatLng(24.939725, 67.023667), zoom: 11.5);

  Completer<GoogleMapController> mapController = Completer();
  final Marker origin = Marker(
    markerId: MarkerId("origin"),
    infoWindow: InfoWindow(title: "Origin"),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(24.925115, 67.036524),
  );
  final Marker destination = Marker(
    markerId: MarkerId("origin"),
    infoWindow: InfoWindow(title: "Origin"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(24.902118, 67.036522),
  );
  final Polyline directionPolyline = Polyline(
    polylineId: PolylineId("directionPolyline"),
    points: [
      LatLng(24.925115, 67.036524),
      LatLng(24.902118, 67.036522),
    ],
    width: 5
  );
}
