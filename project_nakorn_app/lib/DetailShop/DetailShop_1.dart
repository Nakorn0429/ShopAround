import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class Detailshop extends StatefulWidget {
  @override
  _DetailshopState createState() => _DetailshopState();
}

class _DetailshopState extends State<Detailshop> {
  Marker marker;
  GoogleMapController _googleMapController;
  Location _location = Location();

  onMapCreateStart(GoogleMapController controller) {
    _googleMapController = controller;
  }

  updateMarker(double lat, double lot) {
    LatLng latLng = LatLng(lat, lot);
    setState(() {
      marker = Marker(
        markerId: MarkerId('1'),
        position: latLng,
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(
          title: '6052710002',
          snippet: 'Nakorn Kaingu',
        ),
      );
    });
  }

  getCurrentLocation() {
    _location.getLocation().then((latlon) {
      startPostion = CameraPosition(
        target: LatLng(latlon.latitude, latlon.longitude),
        zoom: 15.5,
      );
      updateMarker(latlon.latitude, latlon.longitude);
    });
  }

  CameraPosition startPostion;

  @override
  void initState() {
    getCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'รายละเอียดร้าน',
          style: TextStyle(
            fontSize: 17,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Stack(
              children: <Widget>[
                Container(
                  color: Colors.green,
                  height: 150,
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                        target:LatLng(
                          13.7516994,
                          100.4925684,
                        ),
                    ),
                    mapType: MapType.normal,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //ที่อยู่
            Divider(
              height: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.location_on,
              ),
              title: Text('ที่อยู่ปัจจุบัน'),
            ),
            Divider(
              height: 2,
            ),
            //เบอร์โทร
            ListTile(
              leading: Icon(
                Icons.call,
              ),
              title: Text('เบอร์โทร'),
            ),
            Divider(
              height: 2,
            ),
            //ข้อมูลเพิ่มเติม
            ListTile(
              leading: Icon(
                Icons.details,
              ),
              title: Text('รายละเอียดเพิ่มเติม'),
            ),
            Divider(
              height: 2,
            ),
          ],
        ),
      ),
    );
  }
}
