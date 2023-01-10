import 'package:get/get.dart';

import '../clinic_model.dart';

class ClinicProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      // if (map is Map<String, dynamic>) return Clinic.fromJson(map);
      // if (map is List) return map.map((item) => Clinic.fromJson(item)).toList();
    };
    // httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Clinic?> getClinic(int id) async {
    final response = await get('clinic/$id');
    return response.body;
  }

  Future<Response<Clinic>> postClinic(Clinic clinic) async =>
      await post('clinic', clinic);
  Future<Response> deleteClinic(int id) async => await delete('clinic/$id');
}
