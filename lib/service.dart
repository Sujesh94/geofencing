//Fetch CO2 Emission data
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:test_test/locationData.dart';

class ApiService {
  Map<String, String> getHeaders() {
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      "Authorization":
          "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NzIsImlkZW50aWZpZXIiOiJhZG1pbkBtdG0uY29tIiwiY3NpZCI6IjAyMWI0Y2M0LWQ4OGYtNDU1MS1hODExLWVjMjk2YmU3ZDc2ZCIsImlhdCI6MTY2OTk1NTA4NSwiZXhwIjoxNjcwMDQxNDg1fQ.e0veoJdBeO-XCjef9hlt16om9QzmJgof1WnH6ePe3co"
    };
  }

  // Future<List<VesselLocation?>> getVesselLocation() async {
  //   List<VesselLocation> myModels = [];
  //
  //   try {
  //     var response = await http.get(
  //         Uri.parse("https://mtm.oceanix.cloud/api/sysapi/location"),
  //         headers: getHeaders());
  //
  //     myModels = (json.decode(response.body) as List)
  //         .map((i) => VesselLocation.fromJson(i))
  //         .toList();
  //     //print(response.body);
  //     return myModels;
  //   } catch (e) {
  //     log("error ::::${e.toString()}");
  //   }
  //
  //   return myModels;
  // }

  Future<NoonData> getVesselLocation() async {

    print("************************************************************************************");
    // List<NoonData> myModels = [];
    //
    // try {
    //   var response = await http.get(
    //       Uri.parse("https://mtm.oceanix.cloud/api/sysapi/location"),
    //       headers: getHeaders());
    //
    //   myModels = (json.decode(response.body) as List)
    //       .map((i) => NoonData.fromJson(i))
    //       .toList();
    //   //print(response.body);
    //   return myModels;
    // } catch (e) {
    //   log("error ::::${e.toString()}");
    // }
    //
    // return myModels;
    final jsondata =
    await rootBundle.loadString('assets/json/noondata.json');
    final list = await json.decode(jsondata);
    NoonData data = NoonData.fromJson(list);
    return data;
  }
}
