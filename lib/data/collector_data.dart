import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:recycler/data/contact_data.dart';
import 'package:recycler/data/enum/user_type_enum.dart';
import 'package:recycler/data/user_data.dart';

class CollectorData extends UserData {
  CollectorData(String name, String doc, ContactData contact)
      : super(name, doc, contact, UserTypeEnum.Collector);

  Map<String, dynamic> toMap() {
    return {
      "name": super.name,
      "doc": super.doc,
      "email": super.contact.email,
      "phone": super.contact.phone
    };
  }
}