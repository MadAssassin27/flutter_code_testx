import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../clinic/views/clinic_list_view.dart';
import '../../clinic/views/clinic_view.dart';
import '../../hospital/views/hospital_grid_view.dart';
import '../../hospital/views/hospital_list_view.dart';
import '../../hospital/views/hospital_view.dart';
import '../controllers/home_controller.dart';

List<String> titles = <String>[
  'LABEL1',
  'LABEL2',
];

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int tabsCount = 2;
    final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12,
    );

    final TextStyle selectedLabelStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 12,
    );

    return DefaultTabController(
      initialIndex: 1,
      length: tabsCount,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Valbury',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          leading: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.menu,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.more_vert,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                )),
          ],
          bottom: TabBar(
            labelColor: Color.fromARGB(255, 0, 0, 0),
            tabs: <Widget>[
              Tab(
                text: titles[0],
              ),
              Tab(
                text: titles[1],
              ),
            ],
          ),
        ),
        body: Obx(
          () => IndexedStack(
            index: controller.tabIndex.value,
            children: [
              Column(
                children: <Widget>[
                  Container(
                    height: 250.0,
                    width: MediaQuery.of(context).size.width,
                    child: HospitalView(),
                  ),
                  CarouselSlider(
                    options: CarouselOptions(height: 50.0),
                    items: [
                      1,
                      2,
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 0, 187, 255)),
                              child: Text(
                                'BANNER $i',
                                style: TextStyle(fontSize: 16.0),
                              ));
                        },
                      );
                    }).toList(),
                  ),
                  Container(
                    height: 250.0,
                    width: MediaQuery.of(context).size.width,
                    child: ClinicView(),
                  ),
                ],
              ),
              HospitalListView(),
              ClinicListView(),
              Text(
                'Supposed to be Profile',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex.value,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            selectedItemColor: Color.fromARGB(255, 0, 37, 90),
            unselectedItemColor: Color.fromARGB(255, 0, 106, 255),
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_hospital),
                label: 'RS',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_hospital_outlined),
                label: 'KLINIK',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_box),
                label: 'PROFILE',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
