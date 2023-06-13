import 'package:flutter/material.dart';
import 'package:garden_test/models/plant.dart';
import 'package:garden_test/services/plant_service.dart';
import 'package:provider/provider.dart';

class PlantList extends StatelessWidget {
  const PlantList({super.key});

  @override
  Widget build(BuildContext context) {
    final plantService = Provider.of<PlantService>(context);

    return SizedBox(
        height: 300,
        child: FutureBuilder(
            future: plantService.queryListItems(),
            initialData: const <Plant?>[],
            builder:
                (BuildContext context, AsyncSnapshot<List<Plant?>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Text("Lade Pflanzen");
              }
              return ListView(children: [
                for (var plant in (snapshot.data ?? []))
                  ListTile(title: Text(plant.name))
              ]);
            }));
  }
}
