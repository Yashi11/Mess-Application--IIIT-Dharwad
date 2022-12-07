import 'package:flutter/material.dart';
import 'package:mess/Auth/login.dart';
import 'package:mess/Screens/MainScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Auth/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Mess',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            // routes: {
            //   Home.routeName:(ctx)=>Home(),
            //   Profile.routeName:(ctx)=>Profile(),
            //   Complaint.routeName:(ctx)=>Complaint(),
            //   MenuPage.routeName:(ctx)=>MenuPage(),
            // },
            home: LoginPage());
      },
      designSize: Size(361, 428),
    );
  }
}
