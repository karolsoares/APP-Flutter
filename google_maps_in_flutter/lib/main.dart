import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'models/locations.dart' as locations;
import 'api_retrofit.dart' as retrofit;
import 'package:dio/dio.dart';
import 'pages/login.page.dart';

void main() {
  runApp(const MyLogin());
}

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

//Tela de Login
class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'login.io',
      theme: ThemeData(primaryColor: Colors.black45),
      home: LoginPage(),
    );
  }
}

class _MyAppState extends State<MyApp> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final campusAtitus = await locations.getCampusAtitus();
    setState(() {
      _markers.clear();
      for (final campus in campusAtitus.campus) {
        final marker = Marker(
          markerId: MarkerId(campus.name),
          position: LatLng(campus.lat, campus.long),
          infoWindow: InfoWindow(
            title: campus.name,
            snippet: campus.info,
          ),
        );
        _markers[campus.name] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Localização dos Campus da Atitus'),
          backgroundColor: Colors.black,
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: const CameraPosition(
            target: LatLng(-28.26484618532507, -52.39721135998046),
            zoom: 11.5,
          ),
          markers: _markers.values.toSet(),
        ),
      ),
    );
  }
}
