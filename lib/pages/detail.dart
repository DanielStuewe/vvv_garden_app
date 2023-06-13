import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/Plant.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.plant});
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    var description = plant.hasPlantType.description;
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
        child: Column(children: [
          Text('Species: ${plant.hasPlantType.species}'),
          Text("Description: ${description ?? ''}"),
          Text('Irrigation Frequency in Days: ${plant.hasPlantType.irrigationFrequencyInDays}'),
          Text('Bloom Month: ${plant.hasPlantType.bloomMonths}'),
          Text('Edible: ${plant.hasPlantType.edible}'),
          Text('Created at: ${plant.hasPlantType.createdAt}'),
        ]),
      ),
    );
  }
}
