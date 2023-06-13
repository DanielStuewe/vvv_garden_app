import 'package:flutter/material.dart';
import 'package:garden_test/services/plant_service.dart';
import 'package:garden_test/widgets/combined_button.dart';
import 'package:garden_test/widgets/plant_list.dart';
import 'package:provider/provider.dart';

import 'pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: true),
      home: Provider(
        create: (context) => PlantService()..init(),
        child: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

