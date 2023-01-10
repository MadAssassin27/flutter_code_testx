import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hospital_controller.dart';

class HospitalDetailView extends GetView<HospitalController> {
  const HospitalDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final hospitalId = Get.arguments;
    final hospitals = controller.hospitals;
    final loadedHospital =
        hospitals.firstWhere((element) => element.id == hospitalId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedHospital.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                loadedHospital.imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              loadedHospital.address,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              loadedHospital.phone,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
