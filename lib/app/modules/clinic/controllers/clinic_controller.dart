import 'package:flutter_code_testx/app/modules/home/views/home_view.dart';
import 'package:get/get.dart';

import '../clinic_model.dart';

class ClinicController extends GetxController {
  //TODO: Implement clinicController
  var tabIndex = 'semua'.obs;
  List<Clinic> clinics = [
    Clinic(
      id: 'k1',
      name: 'Klinik Sophia Medika Depok',
      address: 'Jl. Mampang Indah I No.20',
      phone: '(021) 77806127',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/819/819235.png',
      sort: ['semua', 'terdekat'],
    ),
    Clinic(
      id: 'k2',
      name: 'Klinik Depok 2000',
      address: 'JL. Mergonda Raya, Blok A/1',
      phone: '(021) 77200217',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/819/819235.png',
      sort: ['semua', 'partner'],
    ),
    Clinic(
      id: 'k3',
      name: 'Klinik Ismail Medika',
      address: 'JL. Caringin No. 3B',
      phone: '(021) 77889269',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/819/819235.png',
      sort: ['semua', 'bpjs'],
    ),
    Clinic(
      id: 'k4',
      name: 'Klinik Sawangan Medika 24 Jam',
      address: 'Jl. Raya Sawangan No.3',
      phone: '(021) 29315685',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/819/819235.png',
      sort: ['semua', 'bpjs', 'partner'],
    ),
  ];

  void changeSort(index) {
    print("changeSort");
    tabIndex = index;
    Get.to(
      () => const HomeView(),
    );
  }

  findById(String id) {
    return clinics.firstWhere((element) => element.id == id);
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
