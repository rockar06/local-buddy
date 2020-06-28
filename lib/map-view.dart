import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterhackatonapp/components/custom_safe_area.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatefulWidget {
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(19.4007, -99.1573);
  final Map<int, Marker> _markers = generateMarkers();

  static Map<int, Marker> generateMarkers() {
    final Map<int, Marker> generatedMarkers = {};
    for (int i = 0; i < 50; i++) {
      generatedMarkers[i] = generateMarker(i);
    }
    return generatedMarkers;
  }

  static Marker generateMarker(int markerId) {
    Random random = new Random();
    double maxDistance = 0.075;
    double latitude = 19.4007;
    double longitude = -99.1573;
    double plusOrMinus = random.nextDouble() < 0.5 ? 1 : -1;
    double lat = plusOrMinus * (maxDistance * random.nextDouble()) + latitude;
    double lng = plusOrMinus * (maxDistance * random.nextDouble()) + longitude;

    return Marker(
      markerId: MarkerId(markerId.toString()),
      position: LatLng(lat, lng),
      infoWindow: InfoWindow(
        title: "Friendly neighbour " + markerId.toString(),
        snippet: "Check my card for details",
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSafeArea(
        child: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 14.0,
          ),
          markers: _markers.values.toSet(),
        ),
      ),
      resizeToAvoidBottomPadding: false,
    );
  }
}
