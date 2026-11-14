import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            height: 100,
            width: 150,
            color: Colors.amber,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/image2.jpg"),
              backgroundColor: Colors.red,
              radius: 50,
            ),
          ),
        ),
      ),
    );
  }
}
