import 'package:flutter/material.dart';
import 'package:flutter_code_testx/app/modules/home/controllers/home_controller.dart';

import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'app/modules/auth/providers/auth.dart';
import 'app/routes/app_pages.dart';
import 'app/modules/auth/views/auth_view.dart';
import 'app/modules/home/views/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(
        // title: "Application",
        // initialRoute: AppPages.INITIAL,
        // getPages: AppPages.routes,
        ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var homeCtrl = Get.put(HomeController());
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
      ],
      child: Consumer<Auth>(
        builder: (ctx, auth, _) => MaterialApp(
          title: 'Clinics and Hospitals',
          theme: ThemeData(
            primaryColor: Colors.blue,
            fontFamily: 'Lato',
          ),
          home: auth.isAuth ? const HomeView() : AuthView(),
        ),
      ),
    );
  }
}
