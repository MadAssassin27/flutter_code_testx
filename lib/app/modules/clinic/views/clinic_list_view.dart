import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/clinic_controller.dart';
import 'clinic_grid_view.dart';

class ClinicListView extends GetView<ClinicController> {
  const ClinicListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clinic'),
        centerTitle: true,
      ),
      body: ClinicGridView(),
    );
  }
}
