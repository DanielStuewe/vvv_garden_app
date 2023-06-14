import 'package:flutter/material.dart';
import 'package:garden_test/widgets/combined_button.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Divider(),
            CombindedButton(
              icon: Icons.arrow_downward,
              text: 'Our Plants',
            ),
          ],
        ),
      ),
    );
  }
}
