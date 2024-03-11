import 'package:realm/realm.dart';
part 'location_model.g.dart';

class LocationModel {
  String? id;
  String? propinsi;
  String? kota;
  String? kecamatan;
  String? lat;
  String? lon;

  LocationModel(
      {this.id, this.propinsi, this.kota, this.kecamatan, this.lat, this.lon});

  LocationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    propinsi = json['propinsi'];
    kota = json['kota'];
    kecamatan = json['kecamatan'];
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['propinsi'] = propinsi;
    data['kota'] = kota;
    data['kecamatan'] = kecamatan;
    data['lat'] = lat;
    data['lon'] = lon;
    return data;
  }
}

@RealmModel()
class _LocationRealmModel {
  late String id;
  late String propinsi;
  late String kota;
  late String kecamatan;
  late String lat;
  late String lon;
}
