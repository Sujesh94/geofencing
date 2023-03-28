import 'dart:developer';
import 'dart:ui' as ui;

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:haversine_distance/haversine_distance.dart';
import 'package:test_test/locationData.dart';
import 'package:test_test/service.dart';
import 'package:test_test/test.dart';

part 'location_data_event.dart';
part 'location_data_state.dart';


class LocationDataBloc extends Bloc<LocationDataEvent, LocationDataState> {
  final ApiService apiservice;

  LocationDataBloc({required this.apiservice})
      : super(LocationDataLoadingState()) {
    on<LoadLocationDataEvent>((event, emit) async {

      emit(LocationDataLoadingState());
      try {

        final location = await apiservice.getVesselLocation();

        emit(LocationDataLoadedState(location));
      } catch (e) {
        emit(LocationDataErrorState(e.toString()));
      }
    });
    on<GenerateMarkerAndPolyLinesEvent>((event, emit) async {
      emit(GeneratingMarkerAndPolyLinesState());
      try {
        Set<Marker> markers = await generateMarkersAndPolyLines(event);
        emit(GeneratedMarkerAndPolyLinesState(markers));
      } catch (e) {
        emit(LocationDataErrorState(e.toString()));
      }
    });
  }

  Future<Set<Marker>> generateMarkersAndPolyLines(
      GenerateMarkerAndPolyLinesEvent event) async {
    late NoonData? model;
    late List<MtmNoonDatum?> mtNoonData;
    NoonData? response;
    Set<Marker> _markers = {};

    final haversineDistance = HaversineDistance();
    List<LatLng> test = [];

    //change marker icon
    String icon = "assets/icons/paper.png";
    final Uint8List markIcons = await getImages(icon, 50);

    double? lat;
    double? long;
    Map shortestDistance = Map<Map<String, double>, Map<double, double>>();

    model = event.vesselLocation;
    mtNoonData = model!.mtmNoonData;
    //for (var element in model) {
    Map test1 = <String, double>{};
    Map test2 = <double, double>{};

    for (var element1 in mtNoonData) {
      //lattitude and longitude calculation
      if ((element1!.lattitude3 == Lattitude3.N) &&
          element1.lattitude1 != 0 &&
          element1.lattitude2 != 0) {
        lat = element1.lattitude1 + (element1.lattitude2 / 60);
      } else if ((element1!.lattitude3 == Lattitude3.S) &&
          element1.lattitude1 != 0 &&
          element1.lattitude2 != 0) {
        lat = -(element1.lattitude1 + (element1.lattitude2 / 60));
      }
      if ((element1.longitud3 == Longitud3.E) &&
          element1.longitude1 != 0 &&
          element1.longitud2 != 0) {
        long = element1.longitude1 + (element1.longitud2 / 60);
      } else if ((element1!.longitud3 == Longitud3.W) &&
          element1.longitude1 != 0 &&
          element1.longitud2 != 0) {
        long = -(element1.longitude1 + (element1.longitud2 / 60));
      }

      if (lat != 0 && long != 0) {

        List<double> fromNorthAmerica = [];
        List<double> fromUsAtlanticCoast = [];
        List<double> fromHawaiianIslandsCoast = [];
        List<double> fromUsCarribeanSeaArea = [];

        for (int i = 0; i < Constants.northAmerica.length; i++) {
          final startCoordinate = Location(lat!, long!);
          final endCoordinate = Location(Constants.northAmerica[i].latitude,
              Constants.northAmerica[i].longitude);
          final distanceInNmi = haversineDistance.haversine(
              startCoordinate, endCoordinate, Unit.NMI);
          fromNorthAmerica.add(distanceInNmi);
        }
        fromNorthAmerica.sort();
        double time = fromNorthAmerica[0] / element1.avgSpeed;
        // test1.addEntries([MapEntry(element1.vesselCode, time)]);
        //    test2.addEntries([MapEntry("North America",fromNorthAmerica[0] )]);
        test1["${element1.vesselCode} time to cross North America"] = time;
        test1["${element1.vesselCode} distance to North America"] =
            fromNorthAmerica[0];
        fromNorthAmerica.clear();

        for (int i = 0; i < Constants.hawaiianIslandsCoast.length; i++) {
          final startCoordinate = Location(lat!, long!);
          final endCoordinate = Location(
              Constants.hawaiianIslandsCoast[i].latitude,
              Constants.hawaiianIslandsCoast[i].longitude);
          final distanceInNmi = haversineDistance.haversine(
              startCoordinate, endCoordinate, Unit.NMI);
          fromHawaiianIslandsCoast.add(distanceInNmi);
        }
        fromHawaiianIslandsCoast.sort();
        double time1 = fromHawaiianIslandsCoast[0] / element1.avgSpeed;
        test1["${element1.vesselCode} time to cross Hawaiian Islands Coast"] =
            time1;
        test1["${element1.vesselCode} distance to Hawaiian Islands Coast"] =
            fromHawaiianIslandsCoast[0];
        //test1.addEntries([MapEntry(element1.vesselCode, time1)]);
        // test2.addEntries([MapEntry("Hawaiian Islands Coast",fromHawaiianIslandsCoast[0] )]);

        fromHawaiianIslandsCoast.clear();
        for (int i = 0; i < Constants.usCarribeanSeaArea.length; i++) {
          final startCoordinate = Location(lat!, long!);
          final endCoordinate = Location(
              Constants.usCarribeanSeaArea[i].latitude,
              Constants.usCarribeanSeaArea[i].longitude);
          final distanceInNmi = haversineDistance.haversine(
              startCoordinate, endCoordinate, Unit.NMI);
          fromUsCarribeanSeaArea.add(distanceInNmi);
        }
        fromUsCarribeanSeaArea.sort();
        double time2 = fromUsCarribeanSeaArea[0] / element1.avgSpeed;
        // test1.addEntries([MapEntry(element1.vesselCode, time2)]);
        // test2.addEntries([MapEntry("Carribean Sea Area",fromUsCarribeanSeaArea[0] )]);
        test1["${element1.vesselCode} time to cross Carribean Sea Area"] =
            time2;
        test1["${element1.vesselCode} distance to Carribean Sea Area"] =
            fromUsCarribeanSeaArea[0];
        fromUsCarribeanSeaArea.clear();
        for (int i = 0; i < Constants.usAtlanticCoast.length; i++) {
          final startCoordinate = Location(lat!, long!);
          final endCoordinate = Location(Constants.usAtlanticCoast[i].latitude,
              Constants.usAtlanticCoast[i].longitude);
          final distanceInNmi = haversineDistance.haversine(
              startCoordinate, endCoordinate, Unit.NMI);
          fromUsAtlanticCoast.add(distanceInNmi);
        }
        fromUsAtlanticCoast.sort();
        double time3 = fromUsAtlanticCoast[0] / element1.avgSpeed;
        test1["${element1.vesselCode} time to cross Us Atlantic Coast"] = time3;
        test1["${element1.vesselCode} distance to Us Atlantic Coast"] =
            fromUsAtlanticCoast[0];

        fromUsAtlanticCoast.clear();

        _markers.add(
          Marker(
            markerId: MarkerId(element1!.vesselCode.toString()),
            icon: BitmapDescriptor.fromBytes(markIcons),
            position: LatLng(lat!, long!),
            infoWindow: InfoWindow(
              title: element1.vesselCode,
            ),
            rotation: element1.courceT.toDouble(),
          ),
        );

        lat = 0;
        long = 0;
      }
    }
    shortestDistance[test1] = test2;
    //shortestDistance.forEach((k, v) => log('${k}: ${v} \n'));

    // Map test1 = <String, double>{};
    // Map test2 = <double, double>{};
  Map thirdMap = {
      ...test1,
      ...test2,
    };
  test1.forEach((key, value) {
    String a='';
      if(value<=100&& key.toString().contains('distance')){
    log('${key}: ${value} \n');
    //a=key.toString().substring(0,3);


  }
    //   if(key.toString().contains(a)&&key.toString().contains('time')){
    //   log('${key}: ${value} \n');
    // }
  });
// thirdMap.forEach((key, value) {
//   if(value<=100){
//     log('${key}: ${value} \n');
//   }
// });
    //log(shortestDistance.toString());

    return _markers;
  }

  Future<Uint8List> getImages(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(
      data.buffer.asUint8List(),
      targetHeight: width,
    );
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }
}
