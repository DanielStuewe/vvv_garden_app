import 'package:flutter/material.dart';
import 'package:garden_test/models/Plant.dart';
import 'package:garden_test/pages/detail.dart';
import 'package:garden_test/services/plant_service.dart';

class PlantList extends StatelessWidget {
  const PlantList({super.key});

  @override
  Widget build(BuildContext context) {
    final plantService = PlantService();

    return SizedBox(
        height: 300,
        child: FutureBuilder(
            future: plantService.queryListItems(),
            initialData: const <Plant>[],
            builder:
                (BuildContext context, AsyncSnapshot<List<Plant>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Text("Loading Plants...");
              }
              return ListView(children: [
                for (var plant in (snapshot.data ?? []))
                  ListTile(
                    title: Text(plant.name),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(plant: plant),
                        ),
                      );
                    },
                  )
              ]);
            }));
  }
}
