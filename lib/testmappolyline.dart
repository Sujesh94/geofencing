import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_test/location_data_bloc.dart';
import 'package:test_test/service.dart';
import 'package:test_test/test.dart';

class TestMapPolyLine extends StatefulWidget {
  const TestMapPolyLine({Key? key}) : super(key: key);

  @override
  State<TestMapPolyLine> createState() => _TestMapPolyLineState();
}

class _TestMapPolyLineState extends State<TestMapPolyLine> {
  // created controller to display Google Maps
  final Completer<GoogleMapController> _controller = Completer();

//on below line we have set the camera position
  static const CameraPosition _kGoogle = CameraPosition(
    target: LatLng(22.30095693728047, 78.75027935538994),
    zoom: 0,
  );

  final Set<Polyline> _polyline = {};

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < Constants.northAmerica.length; i++) {
      _polyline.add(Polyline(
        polylineId: PolylineId('1'),
        points: Constants.northAmerica,
        width: 3,
        color: Colors.red,
      ));
    }
    for (int i = 0; i < Constants.hawaiianIslandsCoast.length; i++) {
      _polyline.add(Polyline(
        polylineId: const PolylineId('2'),
        points: Constants.hawaiianIslandsCoast,
        width: 3,
        color: Colors.red,
      ));
    }
    for (int i = 0; i < Constants.usAtlanticCoast.length; i++) {
      _polyline.add(Polyline(
        polylineId: const PolylineId('3'),
        points: Constants.usAtlanticCoast,
        width: 3,
        color: Colors.red,
      ));
    }
    for (int i = 0; i < Constants.usCarribeanSeaArea.length; i++) {
      _polyline.add(Polyline(
        polylineId: const PolylineId('4'),
        points: Constants.usCarribeanSeaArea,
        width: 3,
        color: Colors.red,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocationDataBloc(
          apiservice: RepositoryProvider.of<ApiService>(context))
        ..add(LoadLocationDataEvent()),
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Color(0xFF0F9D58),
          // title of app
          title: const Text("Geo Fencing"),
        ),
        body: BlocListener<LocationDataBloc, LocationDataState>(
          listener: (context, state) {
            if (state is LocationDataLoadedState) {
              BlocProvider.of<LocationDataBloc>(context)
                  .add(GenerateMarkerAndPolyLinesEvent(state.vesselLocation));
              // generateMarkersAndPolyLines(state.vesselLocation);
            }
            // if (state is GeneratedMarkerAndPolyLinesState) {
            //   _markers=state.markers;
            // }
            // TODO: implement listener
          },
          child: BlocBuilder<LocationDataBloc, LocationDataState>(
            builder: (context, state) {
              if (state is GeneratedMarkerAndPolyLinesState) {
                return GoogleMap(
                  //given camera position
                  initialCameraPosition: _kGoogle,
                  // on below line we have given map type
                  mapType: MapType.normal,
                  // specified set of markers below
                  markers: state.markers,
                  // on below line we have enabled location
                  myLocationEnabled: true,
                  myLocationButtonEnabled: true,
                  // on below line we have enabled compass location
                  compassEnabled: true,
                  // on below line we have added polylines
                  polylines: _polyline,
                  // displayed google map
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                );
              }
              return Center(
                  child: Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ));
            },
          ),
        ),
      ),
    );
  }
}
