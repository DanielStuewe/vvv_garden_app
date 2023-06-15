import 'package:flutter/material.dart';

import '../models/Plant.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.plant});
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    final plantType = plant.hasPlantType;
    return Scaffold(
      appBar: AppBar(
        title: Text(plant.name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 60, right: 8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Species: ${plantType.species}'),
          Flexible(
            child: Text("Description: ${plantType.description}"),
          ),
          Text('Irrigation Frequency in Days: ${plantType.irrigationFrequencyInDays}'),
          Text('Bloom Month: ${plantType.bloomMonths}'),
          Row(
            children: [
              Icon(
                plantType.edible ?? false
                    ? Icons.spa_outlined
                    : Icons.sick_outlined,
              ),
              Text('Edible: ${plantType.edible}'),
            ],
          ),
          Text('Created at: ${plantType.createdAt}'),
        ]),
      ),
    );
  }
}
