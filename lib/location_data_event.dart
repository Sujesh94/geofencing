part of 'location_data_bloc.dart';

// abstract class LocationDataEvent extends Equatable {
//   const LocationDataEvent();
// }
abstract class LocationDataEvent extends Equatable {
  const LocationDataEvent();

  @override
  List<Object> get props => [];
}

class LoadLocationDataEvent extends LocationDataEvent {
  List<Object> get props => [];
}
class GenerateMarkerAndPolyLinesEvent extends LocationDataEvent{
  List<Object> get props => [];
  late final NoonData? vesselLocation;
  GenerateMarkerAndPolyLinesEvent(this.vesselLocation);
}