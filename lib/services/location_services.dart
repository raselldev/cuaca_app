import "package:cuaca_app/models/location_model.dart";
import "package:cuaca_app/utils/realm_config.dart";
import "package:cuaca_app/utils/url.dart";
import "package:dio/dio.dart";

class LocationService {
  final Dio dio = Dio();
  final URL url = URL();
  final RealmConfig realmConfig = RealmConfig();

  Future<List<LocationModel>> fetchLocation() async {
    try {
      final response = await dio.get(url.location);

      if (response.statusCode == 200) {
        // Use response.data directly instead of converting it to a string and trimming
        final responseData = response.data;

        // Check if responseData is a List before trying to map it
        if (responseData is List) {
          final List<LocationModel> locations = responseData
              .map((item) => LocationModel.fromJson(item))
              .toList(); // Use toList() to ensure the result is a List<LocationModel>
          return locations;
        } else {
          throw Exception('Invalid data format received from API');
        }
      } else {
        throw Exception(
            'Failed to fetch data from API. Status code: ${response.statusCode}');
      }
    } catch (e) {
      ('Error: $e');
      throw Exception('Error: $e');
    }
  }

  Future<void> fetchLocationRealm() async {
    final locations = await fetchLocation();
    realmConfig.realm.writeAsync(() {
      for (var location in locations) {
        realmConfig.realm.add<LocationRealmModel>(
          realmConfig.realm.add(
            LocationRealmModel(location.id!, location.propinsi!, location.kota!,
                location.kecamatan!, location.lat!, location.lon!),
          ),
        );
      }
    });
  }
}
