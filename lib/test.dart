import 'package:google_maps_flutter/google_maps_flutter.dart';

class Constants{



  static List<LatLng> usAtlanticCoast = [
    const LatLng(60.0, -64.16 ),
    const LatLng(60.0, -56.72 ),
    const LatLng(58.9, -55.63 ),
    const LatLng(57.85, -55.06 ),
    const LatLng(57.59, -54.02 ),
    const LatLng(57.24, -53.13 ),
    const LatLng(56.8, -52.39 ),
    const LatLng(56.3, -51.83 ),
    const LatLng(54.39, -50.3 ),
    const LatLng(53.75, -50.12 ),
    const LatLng(53.08, -50.17 ),
    const LatLng(52.34, -49.95 ),
    const LatLng(51.57, -48.88 ),
    const LatLng(50.67, -48.27 ),
    const LatLng(50.04, -48.12 ),
    const LatLng(49.4, -48.16 ),
    const LatLng(48.66, -47.92 ),
    const LatLng(47.41, -47.78 ),
    const LatLng(46.59, -48.02 ),
    const LatLng(45.33, -48.72 ),
    const LatLng(44.73, -49.28 ),
    const LatLng(44.28, -49.86 ),
    const LatLng(43.89, -50.57 ),
    const LatLng(43.6, -51.34 ),
    const LatLng(43.4, -52.29 ),
    const LatLng(43.33, -53.34 ),
    const LatLng(43.35, -54.16 ),
    const LatLng(43.49, -55.13 ),
    const LatLng(42.67, -55.53 ),
    const LatLng(41.97, -56.16 ),
    const LatLng(41.34, -57.09 ),
    const LatLng(40.93, -58.05 ),
    const LatLng(40.69, -59.09 ),
    const LatLng(40.64, -60.21 ),
    const LatLng(40.76, -61.23 ),
    const LatLng(41.08, -62.3 ),
    const LatLng(40.62, -63.18 ),
    const LatLng(40.29, -64.14 ),
    const LatLng(40.13, -64.99 ),
    const LatLng(40.1, -65.89 ),
    const LatLng(39.97, -66.0 ),
    const LatLng(39.47, -66.35 ),
    const LatLng(39.03, -66.81 ),
    const LatLng(38.65, -67.35 ),
    const LatLng(38.32, -68.03 ),
    const LatLng(38.09, -68.78 ),
    const LatLng(37.97, -69.57 ),
    const LatLng(37.96, -70.4 ),
    const LatLng(37.88, -70.63 ),
    const LatLng(37.31, -71.14 ),
    const LatLng(36.54, -71.57 ),
    const LatLng(35.58, -71.43 ),
    const LatLng(34.55, -71.62 ),
    const LatLng(33.91, -71.88 ),
    const LatLng(33.32, -72.29 ),
    const LatLng(32.76, -72.9 ),
    const LatLng(31.92, -74.2 ),
    const LatLng(31.45, -75.26 ),
    const LatLng(31.05, -75.85 ),
    const LatLng(30.76, -76.53 ),
    const LatLng(30.21, -77.31 ),
    const LatLng(29.42, -76.95 ),
    const LatLng(28.62, -76.8 ),
    const LatLng(28.29, -76.67 ),
    const LatLng(28.29, -79.19 ),
    const LatLng(27.88, -79.48 ),
    const LatLng(27.43, -79.53 ),
    const LatLng(27.27, -79.57 ),
    const LatLng(27.2, -79.58 ),
    const LatLng(27.1, -79.59 ),
    const LatLng(27.01, -79.59 ),
    const LatLng(26.92, -79.58 ),
    const LatLng(26.9, -79.57 ),
    const LatLng(26.76, -79.54 ),
    const LatLng(26.74, -79.54 ),
    const LatLng(26.73, -79.54 ),
    const LatLng(26.69, -79.53 ),
    const LatLng(26.64, -79.53 ),
    const LatLng(26.61, -79.52 ),
    const LatLng(26.59, -79.51 ),
    const LatLng(26.58, -79.51 ),
    const LatLng(26.57, -79.51 ),
    const LatLng(26.52, -79.5 ),
    const LatLng(26.48, -79.5 ),
    const LatLng(26.43, -79.5 ),
    const LatLng(26.39, -79.5 ),
    const LatLng(26.39, -79.5 ),
    const LatLng(26.32, -79.53 ),
    const LatLng(26.26, -79.55 ),
    const LatLng(26.25, -79.56 ),
    const LatLng(26.14, -79.6 ),
    const LatLng(26.13, -79.6 ),
    const LatLng(26.12, -79.61 ),
    const LatLng(26.05, -79.64 ),
    const LatLng(25.99, -79.67 ),
    const LatLng(25.99, -79.67 ),
    const LatLng(25.96, -79.68 ),
    const LatLng(25.94, -79.69 ),
    const LatLng(25.9, -79.69 ),
    const LatLng(25.89, -79.7 ),
    const LatLng(25.87, -79.7 ),
    const LatLng(25.83, -79.7 ),
    const LatLng(25.81, -79.71 ),
    const LatLng(25.81, -79.71 ),
    const LatLng(25.77, -79.71 ),
    const LatLng(25.77, -79.71 ),
    const LatLng(25.73, -79.72 ),
    const LatLng(25.71, -79.71 ),
    const LatLng(25.68, -79.71 ),
    const LatLng(25.62, -79.71 ),
    const LatLng(25.62, -79.71 ),
    const LatLng(25.52, -79.7 ),
    const LatLng(25.47, -79.7 ),
    const LatLng(25.4, -79.7 ),
    const LatLng(25.37, -79.71 ),
    const LatLng(25.36, -79.7 ),
    const LatLng(25.28, -79.69 ),
    const LatLng(25.27, -79.69 ),
    const LatLng(25.18, -79.69 ),
    const LatLng(25.16, -79.69 ),
    const LatLng(25.15, -79.7 ),
    const LatLng(25.07, -79.71 ),
    const LatLng(25.05, -79.72 ),
    const LatLng(25.01, -79.73 ),
    const LatLng(24.98, -79.75 ),
    const LatLng(24.92, -79.77 ),
    const LatLng(24.74, -79.82 ),
    const LatLng(24.72, -79.83 ),
    const LatLng(24.71, -79.85 ),
    const LatLng(24.7, -79.88 ),
    const LatLng(24.64, -80.0 ),
    const LatLng(24.61, -80.06 ),
    const LatLng(24.55, -80.21 ),
    const LatLng(24.55, -80.22 ),
    const LatLng(24.54, -80.25 ),
    const LatLng(24.52, -80.28 ),
    const LatLng(24.52, -80.3 ),
    const LatLng(24.5, -80.32 ),
    const LatLng(24.5, -80.33 ),
    const LatLng(24.49, -80.35 ),
    const LatLng(24.47, -80.41 ),
    const LatLng(24.47, -80.42 ),
    const LatLng(24.46, -80.46 ),
    const LatLng(24.44, -80.49 ),
    const LatLng(24.42, -80.54 ),
    const LatLng(24.39, -80.6 ),
    const LatLng(24.38, -80.65 ),
    const LatLng(24.37, -80.66 ),
    const LatLng(24.33, -80.76 ),
    const LatLng(24.32, -80.76 ),
    const LatLng(24.31, -80.78 ),
    const LatLng(24.31, -80.78 ),
    const LatLng(24.16, -81.0 ),
    const LatLng(24.16, -81.0 ),
    const LatLng(24.15, -81.02 ),
    const LatLng(24.14, -81.03 ),
    const LatLng(24.14, -81.03 ),
    const LatLng(24.12, -81.05 ),
    const LatLng(24.04, -81.15 ),
    const LatLng(24.0, -81.19 ),
    const LatLng(23.93, -81.22 ),
    const LatLng(23.9, -81.33 ),
    const LatLng(23.85, -81.5 ),
    const LatLng(23.83, -81.67 ),
    const LatLng(23.82, -81.83 ),
    const LatLng(23.82, -82.0 ),
    const LatLng(23.83, -82.17 ),
    const LatLng(23.85, -82.42 ),
    const LatLng(23.85, -82.67 ),
    const LatLng(23.83, -82.81 ),
    const LatLng(23.83, -82.85 ),
    const LatLng(23.82, -83.0 ),
    const LatLng(23.83, -83.25 ),
    const LatLng(23.86, -83.43 ),
    const LatLng(23.87, -83.55 ),
    const LatLng(23.9, -83.69 ),
    const LatLng(23.93, -83.8 ),
    const LatLng(23.98, -84.0 ),
    const LatLng(24.16, -84.49 ),
    const LatLng(24.22, -84.64 ),
    const LatLng(24.28, -84.77 ),
    const LatLng(24.39, -85.0 ),
    const LatLng(24.44, -85.11 ),
    const LatLng(24.65, -85.53 ),
    const LatLng(24.74, -85.72 ),
    const LatLng(24.9, -86.0 ),
    const LatLng(25.18, -86.5 ),
    const LatLng(25.72, -86.35 ),
    const LatLng(26.22, -86.11 ),
    const LatLng(26.46, -86.22 ),
    const LatLng(26.56, -86.62 ),
    const LatLng(26.02, -87.49 ),
    const LatLng(25.71, -88.55 ),
    const LatLng(25.78, -90.49 ),
    const LatLng(25.74, -90.78 ),
    const LatLng(25.86, -91.88 ),
    const LatLng(26.3, -93.07 ),
    const LatLng(26.0, -93.56 ),
    const LatLng(26.01, -95.66 ),
    const LatLng(26.01, -96.81 ),
    const LatLng(25.98, -96.92 ),
    const LatLng(25.97, -96.98 ),
    const LatLng(25.97, -97.03 ),
    const LatLng(25.96, -97.09 ),
    const LatLng(25.96, -97.14 ),
    const LatLng(25.96, -97.15 )
  ];


//north america
 static List<LatLng> northAmerica = [
    const LatLng(32.54, -117.1),
    const LatLng(32.53, -117.12),
    const LatLng(32.53, -117.24),
    const LatLng(32.55, -117.26),
    const LatLng(32.57, -117.37),
    const LatLng(32.59, -117.46),
    const LatLng(32.63, -117.83),
    const LatLng(31.13, -118.61),
    const LatLng(30.56, -121.79),
    const LatLng(31.77, -123.29),
    const LatLng(32.37, -123.85),
    const LatLng(32.94, -124.2),
    const LatLng(33.67, -124.45),
    const LatLng(34.52, -125.28),
    const LatLng(35.24, -125.72),
    const LatLng(35.73, -126.31),
    const LatLng(36.27, -126.76),
    const LatLng(37.03, -127.12),
    const LatLng(37.76, -127.63),
    const LatLng(38.42, -127.88),
    const LatLng(39.42, -128.52),
    const LatLng(40.31, -128.76),
    const LatLng(41.23, -128.67),
    const LatLng(42.21, -129.01),
    const LatLng(42.79, -129.09),
    const LatLng(43.44, -129.02),
    const LatLng(44.41, -128.69),
    const LatLng(45.51, -128.67),
    const LatLng(46.18, -128.82),
    const LatLng(46.57, -129.07),
    const LatLng(47.67, -131.26),
    const LatLng(48.54, -132.68),
    const LatLng(48.96, -133.25),
    const LatLng(49.38, -134.26),
    const LatLng(50.03, -135.32),
    const LatLng(51.05, -136.76),
    const LatLng(51.9, -137.7),
    const LatLng(52.75, -138.34),
    const LatLng(53.49, -138.68),
    const LatLng(53.68, -138.81),
    const LatLng(54.23, -139.54),
    const LatLng(54.66, -139.94),
    const LatLng(55.34, -140.93),
    const LatLng(56.12, -141.6),
    const LatLng(56.48, -142.29),
    const LatLng(56.62, -142.82),
    const LatLng(58.85, -153.25),
  ];

static List<LatLng> hawaiianIslandsCoast=[
  const LatLng(22.55, -153.01 ),
  const LatLng(23.1, -153.48 ),
  const LatLng(23.54, -154.04 ),
  const LatLng(23.86, -154.61 ),
  const LatLng(24.36, -155.85 ),
  const LatLng(24.7, -156.46 ),
  const LatLng(24.96, -157.37 ),
  const LatLng(25.23, -157.9 ),
  const LatLng(25.43, -158.51 ),
  const LatLng(25.52, -159.16 ),
  const LatLng(25.51, -159.91 ),
  const LatLng(25.36, -160.66 ),
  const LatLng(25.0, -161.64 ),
  const LatLng(24.68, -162.22 ),
  const LatLng(24.26, -162.72 ),
  const LatLng(23.68, -163.22 ),
  const LatLng(23.06, -163.55 ),
  const LatLng(22.34, -163.74 ),
  const LatLng(21.61, -163.77 ),
  const LatLng(20.92, -163.63 ),
  const LatLng(20.23, -163.32 ),
  const LatLng(19.65, -162.9 ),
  const LatLng(19.16, -162.34 ),
  const LatLng(18.65, -161.32 ),
  const LatLng(18.51, -160.64 ),
  const LatLng(18.49, -159.94 ),
  const LatLng(18.18, -159.24 ),
  const LatLng(17.52, -158.95 ),
  const LatLng(16.9, -158.51 ),
  const LatLng(16.43, -157.99 ),
  const LatLng(16.0, -157.29 ),
  const LatLng(15.68, -156.35 ),
  const LatLng(15.63, -155.37 ),
  const LatLng(15.73, -154.78 ),
  const LatLng(15.93, -154.22 ),
  const LatLng(16.77, -152.82 ),
  const LatLng(17.56, -152.01 ),
  const LatLng(18.5, -151.51 ),
  const LatLng(19.05, -151.37 ),
  const LatLng(19.58, -151.33 ),
  const LatLng(20.13, -151.38 ),
  const LatLng(20.65, -151.53 ),
  const LatLng(21.49, -152.0 ),
  const LatLng(22.12, -152.52 ),
  const LatLng(22.55, -153.01 ),
  ];

static List<LatLng> usCarribeanSeaArea=[
  const LatLng(17.31,  -67.54 ),
  const LatLng(19.19,  -67.45 ),
  const LatLng(19.51,  -65.28 ),
  const LatLng(19.21,  -65.1 ),
  const LatLng(18.75,  -65.01 ),
  const LatLng(18.69,  -64.99 ),
  const LatLng(18.49,  -64.9 ),
  const LatLng(18.46,  -64.89 ),
  const LatLng(18.42,  -64.88 ),
  const LatLng(18.41,  -64.87 ),
  const LatLng(18.4,  -64.86 ),
  const LatLng(18.39,  -64.86 ),
  const LatLng(18.39,  -64.84 ),
  const LatLng(18.4,  -64.83 ),
  const LatLng(18.4,  -64.82 ),
  const LatLng(18.41,  -64.8 ),
  const LatLng(18.4,  -64.78 ),
  const LatLng(18.39,  -64.78 ),
  const LatLng(18.38,  -64.76 ),
  const LatLng(18.38,  -64.75 ),
  const LatLng(18.38,  -64.74 ),
  const LatLng(18.38,  -64.74 ),
  const LatLng(18.38,  -64.73 ),
  const LatLng(18.38,  -64.73 ),
  const LatLng(18.37,  -64.72 ),
  const LatLng(18.37,  -64.71 ),
  const LatLng(18.37,  -64.7 ),
  const LatLng(18.37,  -64.68 ),
  const LatLng(18.37,  -64.67 ),
  const LatLng(18.36,  -64.64 ),
  const LatLng(18.36,  -64.64 ),
  const LatLng(18.34,  -64.64 ),
  const LatLng(18.32,  -64.64 ),
  const LatLng(18.32,  -64.64 ),
  const LatLng(18.29,  -64.66 ),
  const LatLng(18.28,  -64.66 ),
  const LatLng(18.19,  -64.65 ),
  const LatLng(18.05,  -64.63 ),
  const LatLng(18.05,  -64.49 ),
  const LatLng(18.05,  -64.45 ),
  const LatLng(18.04,  -64.35 ),
  const LatLng(18.04,  -64.34 ),
  const LatLng(18.03,  -64.27 ),
  const LatLng(18.0,  -64.04 ),
  const LatLng(18.0,  -64.02 ),
  const LatLng(17.98,  -63.95 ),
  const LatLng(17.96,  -63.9 ),
  const LatLng(17.94,  -63.89 ),
  const LatLng(17.66,  -63.91 ),
  const LatLng(17.62,  -63.92 ),
  const LatLng(17.51,  -63.93 ),
  const LatLng(17.19,  -63.97 ),
  const LatLng(17.08,  -63.98 ),
  const LatLng(17.0,  -63.99 ),
  const LatLng(17.31,  -67.54 )
];

}



