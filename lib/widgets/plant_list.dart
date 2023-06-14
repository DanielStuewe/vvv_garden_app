import 'package:flutter/material.dart';
import 'package:garden_test/models/Plant.dart';
import 'package:garden_test/pages/detail.dart';
import 'package:garden_test/services/plant_service.dart';

class PlantList extends StatelessWidget {
  const PlantList({super.key});

  @override
  Widget build(BuildContext context) {
    final plantService = PlantService();
    var plants = plantService.queryListItems().asStream().toList();
    T? cast<T>(x) => x is T ? x : null;


    return SizedBox(
        height: 300,
        child: FutureBuilder(
            future: plantService.queryListItems(),
            initialData: const <Plant?>[],
            builder:
                (BuildContext context, AsyncSnapshot<List<Plant?>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Text("Loading Plants...");
              }
              return ListView(children: [
                for (var currentPlant in (snapshot.data ?? []))
                  ListTile(title: Text(currentPlant.name), onTap: () {
                    var myPlant = cast<Plant>(currentPlant);
                    if (myPlant != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailPage(plant: myPlant),
                        ),
                      );
                    }

                  },)
              ]);
            }));
  }
}
