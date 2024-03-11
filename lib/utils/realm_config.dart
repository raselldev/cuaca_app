import 'package:cuaca_app/models/location_model.dart';
import 'package:realm/realm.dart';

class RealmConfig {
  late Realm _realm;
  Realm get realm => _realm;

  RealmConfig() {
    _initRealm();
  }

  void _initRealm() {
    final config = Configuration.local([
      LocationRealmModel.schema,
    ]);
    _realm = Realm(config);
  }
}
