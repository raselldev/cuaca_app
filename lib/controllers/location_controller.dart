// ignore_for_file: unnecessary_overrides

import "package:cuaca_app/services/location_services.dart";
import "package:cuaca_app/utils/realm_config.dart";
import 'package:get/get.dart';
import "package:cuaca_app/models/location_model.dart";
import "package:realm/realm.dart";
import 'package:logger/logger.dart';

class LocationController extends GetxController {
  LocationService service = LocationService();
  RealmConfig realmConfig = RealmConfig();
  Logger logger = Logger();
  RxList<String> locationList = <String>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetchData();
    getListLocation();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void fetchData() {
    var config = Configuration.local([LocationRealmModel.schema]);
    var realm = Realm(config);

    var countLocation = realm.all<LocationRealmModel>().length;
    if (countLocation == 0) {
      service.fetchLocationRealm();
    }
  }

  void getListLocation() {
    List<String> _locationList = [];
    final provinsi = realmConfig.realm.all<LocationRealmModel>();
    for (final data in provinsi) {
      _locationList.add(data.propinsi);
    }
    locationList = _locationList.toSet().toList().obs;
    logger.d(locationList.length);
  }
}
