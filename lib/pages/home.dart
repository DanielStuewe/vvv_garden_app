import 'package:flutter/material.dart';
import 'package:garden_test/pages/plants.dart';
import 'package:garden_test/widgets/combined_button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Divider(),
            CombinedButton(
              icon: Icons.arrow_downward,
              text: 'Our Plants',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PlantListPage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
