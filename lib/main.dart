import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:garden_test/services/plant_service.dart';
import 'package:provider/provider.dart';

import 'amplifyconfiguration.dart';
import 'models/ModelProvider.dart';
import 'pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    await Amplify.addPlugin(
        AmplifyAPI(modelProvider: ModelProvider.instance)
    );

    try {
      await Amplify.configure(amplifyconfig);
    } on Exception catch (e) {
      safePrint('An error occurred configuring Amplify: $e');
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: true),
      home: Provider(
        create: (context) => PlantService(),
        child: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
