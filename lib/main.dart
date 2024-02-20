import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_flutter/Home/Home_Screen.dart';
import 'package:sample_flutter/Skeleton/Skeleton_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (p0) => const HomeScreen(),
        '/skeleton': (p0) => const SkeletonScreen()
      },
    );
  }
}
