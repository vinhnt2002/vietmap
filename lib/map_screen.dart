import 'package:flutter/material.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late VietmapController controller;
  String apiKey = '38db2f3d058b34e0f52f067fe66a902830fac1a044e8d444';

  // geo
  // https://maps.vietmap.vn/api/search/v3?apikey=38db2f3d058b34e0f52f067fe66a902830fac1a044e8d444&text=Coffee&focus=10.762622,106.660172

  // route
  // https://maps.vietmap.vn/api/route?api-version=1.1&apikey=38db2f3d058b34e0f52f067fe66a902830fac1a044e8d444&point=10.79628438955497,106.70592293472612&point=10.801891047584164,106.70660958023404&vehicle=motorcycle

  //matrix
  // https://maps.vietmap.vn/api/matrix?api-version=1.1&apikey=38db2f3d058b34e0f52f067fe66a902830fac1a044e8d444&point=10.768897,106.678505&point=10.765496,106.67626&point=10.7627936,106.6750729&point=10.7616745,106.6792425&point=10.765605,106.685383&point=10.766843,106.674029&sources=0;1&destinations=2;3;4;5
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VietmapGL(
        styleString:
            "https://maps.vietmap.vn/api/maps/light/styles.json?apikey=$apiKey",
            // "https://maps.vietmap.vn/api/search/v3?apikey=38db2f3d058b34e0f52f067fe66a902830fac1a044e8d444&text=Coffee&focus=10.762622,106.660172",
        initialCameraPosition: CameraPosition(
          target: LatLng(10.762317, 106.654551),
          zoom: 15.0,
        ),
        onMapCreated: (VietmapController controller) {
          // this.controller = controller;
        },
        onStyleLoadedCallback: () {
          print("Map style loaded");
        },
      ),
    );
  }
}
