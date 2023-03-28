part of 'location_data_bloc.dart';

// abstract class LocationDataState extends Equatable {
//   const LocationDataState();
// }

class LocationDataInitial extends LocationDataState {
  @override
  List<Object> get props => [];
}
abstract class LocationDataState extends Equatable {
  const LocationDataState();

  @override
  List<Object> get props => [];
}

class LocationDataLoadedState extends LocationDataState {
  //final List<VesselLocation?> vesselLocation;
  final NoonData? vesselLocation;
  // final Set<Marker> _markers;

  const LocationDataLoadedState(this.vesselLocation,);
}

class LocationDataLoadingState extends LocationDataState {
  @override
  List<Object> get props => [];
}

class LocationDataErrorState extends LocationDataState {
  final String? message;
  const LocationDataErrorState(this.message);
}

class LocationDataNullcheckState extends LocationDataState {}

class GeneratingMarkerAndPolyLinesState extends LocationDataState{}

class GeneratedMarkerAndPolyLinesState extends LocationDataState{
 final Set<Marker> markers;
 const GeneratedMarkerAndPolyLinesState(this.markers);
}