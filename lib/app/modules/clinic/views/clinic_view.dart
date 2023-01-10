import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/clinic_controller.dart';
import 'clinic_grid_view.dart';
import 'clinic_list_view.dart';

class ClinicView extends GetView<ClinicController> {
  const ClinicView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(
                'Clinic',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(
                        () => const ClinicListView(),
                      );
                    },
                    child: Text(
                      'lihat semua',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            body: ClinicGridView(),
          ),
        ),
      ],
    );
  }
}
