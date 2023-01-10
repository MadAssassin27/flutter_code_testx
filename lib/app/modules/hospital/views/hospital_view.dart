import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hospital_controller.dart';
import 'hospital_grid_view.dart';
import 'hospital_list_view.dart';

class HospitalView extends GetView<HospitalController> {
  const HospitalView({Key? key}) : super(key: key);
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
                'Hospital',
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
                        () => const HospitalListView(),
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
            body: HospitalGridView(),
          ),
        ),
      ],
    );
  }
}
