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
        title: Row(
          children: [
            const Icon(Icons.forest),
            const SizedBox(
              width: 32,
            ),
            Text(title)
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 32),
            const Expanded(
              flex: 4,
              child: Image(image: AssetImage('assets/ai_rooftop_garden.png')),
            ),
            const Spacer(),
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
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
