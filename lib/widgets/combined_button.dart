import 'package:flutter/material.dart';
import 'package:garden_test/widgets/plant_list.dart';

class CombindedButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double? padding;

  const CombindedButton({
    super.key,
    required this.text,
    required this.icon,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return Scaffold(
                  appBar: AppBar(
                    title: const Text('Our Plants'),
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                  body: const Center(
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 60, right: 8),
                            child: PlantList())
                      ],
                    ),
                  ));
            },
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          Padding(padding: EdgeInsets.symmetric(horizontal: padding ?? 4)),
          Text(text),
        ],
      ),
    );
  }
}
