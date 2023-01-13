import 'package:flutter_code_testx/app/modules/home/views/home_view.dart';
import 'package:get/get.dart';

import '../hospital_model.dart';

class HospitalController extends GetxController {
  //TODO: Implement HospitalController
  var tabIndex = 'semua'.obs;
  List<Hospital> hospitals = [
    Hospital(
      id: 'rs1',
      name: 'RSUD Kota Depok',
      address: 'Jl. Muhtar No.99',
      phone: '(0251) 8602514',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/33/33777.png',
      sort: ['semua', 'terdekat', 'bpjs', 'partner'],
    ),
    Hospital(
      id: 'rs2',
      name: 'Mitra Keluarga Depok',
      address: 'Jl. Margonda Raya',
      phone: '(021) 77210700',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/33/33777.png',
      sort: ['semua', 'bpjs'],
    ),
    Hospital(
      id: 'rs3',
      name: 'RSU Hermina Depok',
      address: 'Jl. Siliwangi No.50',
      phone: '1 500 488',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/33/33777.png',
      sort: ['semua', 'partner'],
    ),
    Hospital(
      id: 'rs4',
      name: 'RSU Bhakti Yudha',
      address: 'Jl. Raya Sawangan No.2A',
      phone: '(021) 7520082)',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/33/33777.png',
      sort: ['semua'],
    ),
  ];

  void changeSort(RxString index) {
    print("changeSort");
    tabIndex.value = index.string;
    update();
  }

  findById(String id) {
    return hospitals.firstWhere((element) => element.id == id);
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
