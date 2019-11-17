import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'enum/garbage_type_enum.dart';

class DisposalPlaceData {
  String _id, _name;
  LatLng _location;
  GarbageTypeEnum _garbageType;

  DisposalPlaceData(this._name, this._location, this._garbageType);

  Map<String, dynamic> toMap() {
    return {
      "name": _name,
      "garbageType": _garbageType.index,
      "location": {
        "lat": _location.latitude,
        "lng": _location.longitude
      }
    };
  }

  GarbageTypeEnum get garbageType => _garbageType;
  LatLng get location => _location;
  String get name => _name;
  String get id => _id;
}