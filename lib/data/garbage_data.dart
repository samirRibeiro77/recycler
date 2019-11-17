import 'enum/garbage_status_enum.dart';
import 'enum/garbage_type_enum.dart';

class GarbageData {
  String _id, _name, _companyId, _disposalId, _collectorId;
  int _quantity;
  double _price;
  GarbageTypeEnum _garbageType;
  GarbageStatusEnum _garbageStatus;


  GarbageData(this._id, this._name, this._companyId, this._quantity,
      this._price, this._garbageType, this._garbageStatus);

  Map<String, dynamic> toMap() {
    return {
      "name": _name,
      "companyId": _companyId,
      "disposalId": _disposalId,
      "collectorId": _collectorId,
      "quantity": _quantity,
      "price": _price,
      "garbageType": _garbageType.index,
      "garbageStatus": _garbageStatus.index
    };
  }

  void collect(String collectorId) {
    this._collectorId = collectorId;
    this._garbageStatus = GarbageStatusEnum.Collected;
  }

  void deliver(String disposalId) {
    this._disposalId = disposalId;
    this._garbageStatus = GarbageStatusEnum.Delivered;
  }

  String get companyId => _companyId;
  GarbageTypeEnum get garbageType => _garbageType;
  double get price => _price;
  int get quantity => _quantity;
  String get name => _name;
  String get id => _id;
  GarbageStatusEnum get garbageStatus => _garbageStatus;
  String get collectorId => _collectorId;
  String get disposalId => _disposalId;
}