import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/clinic_controller.dart';
import 'widgets/clinic_item.dart';

class ClinicGridView extends GetView<ClinicController> {
  const ClinicGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sortCtrl = Get.put(ClinicController());
    var tabIndex = controller.tabIndex.value;
    print(tabIndex);
    final clinics = controller.clinics;

    final sortedClinics = clinics
        .where((hos) => hos.sort.any((sort) => sort == tabIndex))
        .toList();

    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Row(
            children: [
              OutlinedButton.icon(
                icon: RotatedBox(
                  quarterTurns: 1,
                ),
                onPressed: () => controller.changeSort('semua'.obs),
                label: Text(
                  ' SEMUA ',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              OutlinedButton.icon(
                icon: RotatedBox(
                  quarterTurns: 1,
                ),
                onPressed: () => controller.changeSort('bpjs'.obs),
                label: Text(
                  '  BPJS  ',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              OutlinedButton.icon(
                icon: RotatedBox(
                  quarterTurns: 1,
                ),
                onPressed: () => controller.changeSort('partner'.obs),
                label: Text(
                  'PARTNER',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              OutlinedButton.icon(
                icon: RotatedBox(
                  quarterTurns: 1,
                ),
                onPressed: () => controller.changeSort('terdekat'.obs),
                label: Text(
                  'TERDEKAT',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Container(
          margin: EdgeInsets.all(0.0),
          child: ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(0.0),
            itemCount: sortedClinics.length,
            itemBuilder: (ctx, i) {
              var data = sortedClinics[i];
              return ClinicItem(data);
            },
          ),
        )),
      ],
    );
  }
}
