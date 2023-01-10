import 'package:get/get.dart';

import '../hospital_model.dart';

class HospitalProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      //   if (map is Map<String, dynamic>) return Hospital.fromJson(map);
      //   if (map is List)
      //     return map.map((item) => Hospital.fromJson(item)).toList();
    };
    // httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Hospital?> getHospital(int id) async {
    final response = await get('hospital/$id');
    return response.body;
  }

  Future<Response<Hospital>> postHospital(Hospital hospital) async =>
      await post('hospital', hospital);
  Future<Response> deleteHospital(int id) async => await delete('hospital/$id');
}
