import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PageHome extends StatefulWidget {
  PageHome({Key? key}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  Completer<GoogleMapController> _controller = Completer();

  List<Marker> markers = [];

  @override
  void initState() {
    intilize();
    super.initState();
  }

  intilize() {
    Marker firstMarker = Marker(
      markerId: MarkerId('Lourdes'),
      position: LatLng(13.7247207, -89.3750222),
      infoWindow: InfoWindow(
          title: 'Encomiendas SV - Lourdes',
          snippet: 'Lorem ipsum dolor sit amet.'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueGreen,
      ),
    );

    Marker secondMarker = Marker(
      markerId: MarkerId('Merliot'),
      position: LatLng(13.6773344, -89.2703855),
      infoWindow: InfoWindow(
          title: 'Encomiendas SV - Ciudad Merliot',
          snippet: 'Lorem ipsum dolor sit amet.'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueBlue,
      ),
    );

    Marker thirddMarker = Marker(
      markerId: MarkerId('Santa Tecla'),
      position: LatLng(13.6755222, -89.2899199),
      infoWindow: InfoWindow(
          title: 'Encomiendas SV - Santa Tecla',
          snippet: 'Lorem ipsum dolor sit amet.'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueMagenta,
      ),
    );

    Marker fourthMarker = Marker(
      markerId: MarkerId('San Vicente'),
      position: LatLng(13.6452504, -88.7861371),
      infoWindow: InfoWindow(
          title: 'Encomiendas SV - San Vicente',
          snippet: 'Lorem ipsum dolor sit amet.'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueRed,
      ),
    );

    markers.add(firstMarker);
    markers.add(secondMarker);
    markers.add(thirddMarker);
    markers.add(fourthMarker);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GoogleMap(
            mapType: MapType.normal,
            onTap: (LatLng) {},
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            initialCameraPosition: CameraPosition(
                target: LatLng(13.6884105, -89.1147506), zoom: 9),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            markers: markers.map((e) => e).toSet(),
          ),
        ),
      ),
    );
  }
}
