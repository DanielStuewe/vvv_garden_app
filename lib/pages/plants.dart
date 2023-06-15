import 'package:flutter/material.dart';

import '../widgets/plant_list.dart';

class PlantListPage extends StatelessWidget {
  const PlantListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Plants'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const PlantList(),
    );
  }
}
