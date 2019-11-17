import 'contact_data.dart';
import 'enum/user_type_enum.dart';

class UserData {
  String _id, _name, _doc;
  ContactData _contact;
  UserTypeEnum _type;

  UserData(this._name, this._doc, this._contact, this._type);

  String get id => _id;
  UserTypeEnum get type => _type;
  ContactData get contact => _contact;
  String get doc => _doc;
  String get name => _name;
}