import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter/services.dart';
import 'package:internproject/homepage.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: AppConstant.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // accentColor: AppColor.sunColor,
      ),
      home: const HomePage(),
      // home: CalendarScreen(),
    );
  }
}


