import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

class SeeHotelViewModel extends BaseViewModel {
  final initialCameraPosition =
      CameraPosition(target: LatLng(24.939725, 67.023667), zoom: 11.5);

  GoogleMapController? mapController;

  Marker origin = Marker(
    markerId: MarkerId("hotel"),
    infoWindow: InfoWindow(title: "Hotel"),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(24.939725, 67.023667),
  );
}
