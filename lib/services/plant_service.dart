import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';

import '../models/plant.dart';

class PlantService {
  Future<List<Plant?>> queryListItems() async {
    await Amplify.asyncConfig;

    try {
      debugPrint("Request plants...");
      const graphQLDocument = '''query {
  listPlants {
    items {
      id
      name
      irrigations
      hasPlantType {
        id
        description
        irrigationFrequencyInDays
      }
    }
  }
}''';
      final response = await Amplify.API.query(
          request: GraphQLRequest<PaginatedResult<Plant>>(
            document: graphQLDocument,
            modelType: const PaginatedModelType(Plant.classType),
            decodePath: "listPlants"
          )
        // ModelQueries.list(Plant.classType)
      ).response;

      debugPrint("Receive plants...");

      final plants = response.data?.items;
      if (plants == null) {
        safePrint('errors: ${response.errors}');
        return const [];
      }
      return plants;
    } on ApiException catch (e) {
      safePrint('Query failed: $e');
      return const [];
    }
  }
}
