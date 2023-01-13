import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hospital_controller.dart';
import 'widgets/hospital_item.dart';

class HospitalGridView extends GetView<HospitalController> {
  const HospitalGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() {
        var sortCtrl = Get.put(HospitalController());
        var tabIndex = controller.tabIndex.value;
        print(tabIndex);
        final hospitals = controller.hospitals.obs;

        final sortedHospitals = hospitals
            .where((hos) => hos.sort.any((sort) => sort == tabIndex))
            .toList()
            .obs;
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
                itemCount: sortedHospitals.length,
                itemBuilder: (ctx, i) {
                  var data = sortedHospitals[i];
                  return HospitalItem(data);
                },
              ),
            )),
          ],
        );
      }),
    );
  }
}
