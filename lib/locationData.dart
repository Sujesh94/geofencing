
import 'dart:convert';

NoonData noonDataFromJson(String str) => NoonData.fromJson(json.decode(str));

String noonDataToJson(NoonData data) => json.encode(data.toJson());

class NoonData {
  NoonData({
    required this.mtmNoonData,
  });

  List<MtmNoonDatum> mtmNoonData;

  factory NoonData.fromJson(Map<String, dynamic> json) => NoonData(
    mtmNoonData: List<MtmNoonDatum>.from(json["MTM NoonData"].map((x) => MtmNoonDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "MTM NoonData": List<dynamic>.from(mtmNoonData.map((x) => x.toJson())),
  };
}

class MtmNoonDatum {
  MtmNoonDatum({
    required this.vesselCode,
    required this.voyageStatus,
    required this.reportDate,
    required this.timeZone,
    required this.avgSpeed,
    required this.departureCountry,
    required this.depPort,
    required this.arrivalCountry,
    required this.arrivalPort,
    required this.averageSpeedThroughWater,
    required this.courceT,
    required this.distanceToGo,
    required this.lattitude1,
    required this.lattitude2,
    required this.lattitude3,
    required this.longitud2,
    required this.longitud3,
    required this.longitude1,
    required this.seaDirection,
  });

  String vesselCode;
  VoyageStatus? voyageStatus;
  String reportDate;
  String timeZone;
  double avgSpeed;
  String departureCountry;
  String depPort;
  String arrivalCountry;
  String arrivalPort;
  double averageSpeedThroughWater;
  int courceT;
  double distanceToGo;
  int lattitude1;
  int lattitude2;
  Lattitude3? lattitude3;
  int longitud2;
  Longitud3? longitud3;
  int longitude1;
  int seaDirection;

  factory MtmNoonDatum.fromJson(Map<String, dynamic> json) => MtmNoonDatum(
    vesselCode: json["VesselCode"],
    voyageStatus: voyageStatusValues.map[json["Voyage Status"]],
    reportDate: json["ReportDate"],
    timeZone: json["TimeZone"],
    avgSpeed: json["AvgSpeed"].toDouble(),
    departureCountry: json["DepartureCountry"],
    depPort: json["DepPort"],
    arrivalCountry: json["ArrivalCountry"],
    arrivalPort: json["ArrivalPort"],
    averageSpeedThroughWater: json["Average Speed Through Water"].toDouble(),
    courceT: json["CourceT"],
    distanceToGo: json["DistanceToGo"].toDouble(),
    lattitude1: json["Lattitude1"],
    lattitude2: json["Lattitude2"],
    lattitude3: lattitude3Values.map[json["Lattitude3"]],
    longitud2: json["Longitud2"],
    longitud3: longitud3Values.map[json["Longitud3"]],
    longitude1: json["Longitude1"],
    seaDirection: json["SeaDirection"],
  );

  Map<String, dynamic> toJson() => {
    "VesselCode": vesselCode,
    "Voyage Status": voyageStatusValues.reverse[voyageStatus],
    "ReportDate": reportDate,
    "TimeZone": timeZone,
    "AvgSpeed": avgSpeed,
    "DepartureCountry": departureCountry,
    "DepPort": depPort,
    "ArrivalCountry": arrivalCountry,
    "ArrivalPort": arrivalPort,
    "Average Speed Through Water": averageSpeedThroughWater,
    "CourceT": courceT,
    "DistanceToGo": distanceToGo,
    "Lattitude1": lattitude1,
    "Lattitude2": lattitude2,
    "Lattitude3": lattitude3Values.reverse[lattitude3],
    "Longitud2": longitud2,
    "Longitud3": longitud3Values.reverse[longitud3],
    "Longitude1": longitude1,
    "SeaDirection": seaDirection,
  };
}

enum Lattitude3 { N, S }

final lattitude3Values = EnumValues({
  "N": Lattitude3.N,
  "S": Lattitude3.S
});

enum Longitud3 { E, W }

final longitud3Values = EnumValues({
  "E": Longitud3.E,
  "W": Longitud3.W
});

enum VoyageStatus { UNDERWAY, PORT_STAY, HARBOUR_STEAMING_OUT, HARBOUR_STEAMING_IN }

final voyageStatusValues = EnumValues({
  "HARBOUR STEAMING IN": VoyageStatus.HARBOUR_STEAMING_IN,
  "HARBOUR STEAMING OUT": VoyageStatus.HARBOUR_STEAMING_OUT,
  "PORT STAY": VoyageStatus.PORT_STAY,
  "UNDERWAY": VoyageStatus.UNDERWAY
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
