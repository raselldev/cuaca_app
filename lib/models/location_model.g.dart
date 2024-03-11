// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class LocationRealmModel extends _LocationRealmModel
    with RealmEntity, RealmObjectBase, RealmObject {
  LocationRealmModel(
    String id,
    String propinsi,
    String kota,
    String kecamatan,
    String lat,
    String lon,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'propinsi', propinsi);
    RealmObjectBase.set(this, 'kota', kota);
    RealmObjectBase.set(this, 'kecamatan', kecamatan);
    RealmObjectBase.set(this, 'lat', lat);
    RealmObjectBase.set(this, 'lon', lon);
  }

  LocationRealmModel._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get propinsi =>
      RealmObjectBase.get<String>(this, 'propinsi') as String;
  @override
  set propinsi(String value) => RealmObjectBase.set(this, 'propinsi', value);

  @override
  String get kota => RealmObjectBase.get<String>(this, 'kota') as String;
  @override
  set kota(String value) => RealmObjectBase.set(this, 'kota', value);

  @override
  String get kecamatan =>
      RealmObjectBase.get<String>(this, 'kecamatan') as String;
  @override
  set kecamatan(String value) => RealmObjectBase.set(this, 'kecamatan', value);

  @override
  String get lat => RealmObjectBase.get<String>(this, 'lat') as String;
  @override
  set lat(String value) => RealmObjectBase.set(this, 'lat', value);

  @override
  String get lon => RealmObjectBase.get<String>(this, 'lon') as String;
  @override
  set lon(String value) => RealmObjectBase.set(this, 'lon', value);

  @override
  Stream<RealmObjectChanges<LocationRealmModel>> get changes =>
      RealmObjectBase.getChanges<LocationRealmModel>(this);

  @override
  LocationRealmModel freeze() =>
      RealmObjectBase.freezeObject<LocationRealmModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(LocationRealmModel._);
    return const SchemaObject(
        ObjectType.realmObject, LocationRealmModel, 'LocationRealmModel', [
      SchemaProperty('id', RealmPropertyType.string),
      SchemaProperty('propinsi', RealmPropertyType.string),
      SchemaProperty('kota', RealmPropertyType.string),
      SchemaProperty('kecamatan', RealmPropertyType.string),
      SchemaProperty('lat', RealmPropertyType.string),
      SchemaProperty('lon', RealmPropertyType.string),
    ]);
  }
}
