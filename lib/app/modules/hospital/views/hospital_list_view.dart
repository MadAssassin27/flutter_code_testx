import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hospital_controller.dart';
import 'hospital_grid_view.dart';

class HospitalListView extends GetView<HospitalController> {
  const HospitalListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hospital'),
        centerTitle: true,
      ),
      body: HospitalGridView(),
    );
  }
}
