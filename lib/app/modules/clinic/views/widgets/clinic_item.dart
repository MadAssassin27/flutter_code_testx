import 'package:flutter/material.dart';
import 'package:flutter_code_testx/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../clinic_detail_view.dart';

class ClinicItem extends GetView<HomeController> {
  final data;

  ClinicItem(this.data);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ListTile(
        leading: CircleAvatar(
          child: Image.network(
            data.imageUrl,
            width: 33,
            height: 33,
          ),
        ),
        title: Text(
          data.name,
          textAlign: TextAlign.left,
        ),
        subtitle: Text(
          data.address,
          textAlign: TextAlign.left,
        ),
        trailing: const Text(
          'lihat detail',
          style: TextStyle(
            color: Color.fromARGB(255, 54, 198, 255),
          ),
        ),
        onTap: () {
          Get.to(() => const ClinicDetailView(), arguments: data.id!);
        },
      ),
    );
  }
}
