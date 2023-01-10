import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/clinic_controller.dart';

class ClinicDetailView extends GetView<ClinicController> {
  const ClinicDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final clinicId = Get.arguments;
    final clinics = controller.clinics;
    final loadedClinic =
        clinics.firstWhere((element) => element.id == clinicId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedClinic.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                loadedClinic.imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              loadedClinic.address,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              loadedClinic.phone,
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
