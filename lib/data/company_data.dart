import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:recycler/data/contact_data.dart';
import 'package:recycler/data/enum/user_type_enum.dart';
import 'package:recycler/data/user_data.dart';

class CompanyData extends UserData {
  LatLng _location;

  CompanyData(String name, String doc, ContactData contact, this._location)
      : super(name, doc, contact, UserTypeEnum.Company);

  Map<String, dynamic> toMap() {
    return {
      "name": super.name,
      "doc": super.doc,
      "email": super.contact.email,
      "phone": super.contact.phone,
      "location": {
        "lat": _location.latitude,
        "lng": _location.longitude
      }
    };
  }

  LatLng get location => _location;
}