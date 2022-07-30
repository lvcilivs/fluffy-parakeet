import 'package:flutter/material.dart';
import 'package:sneezing_cheetah/router.dart';

void main() {
  runApp(const SneezingCheetahApp());
}

class SneezingCheetahApp extends StatelessWidget {
  const SneezingCheetahApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sneezing Cheetah',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: initialPage,
      onGenerateRoute: generateRoutes,
    );
  }
}
