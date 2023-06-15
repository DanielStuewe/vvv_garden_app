import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/Plant.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.plant}) : super(key: key);

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLabelRow(
              label: 'Species',
              icon: Icons.info_outline,
              value: plantType.species,
            ),
            const SizedBox(height: 12),
            _buildLabelRow(
              label: 'Description',
              icon: Icons.description_outlined,
              value: plantType.description,
              maxWidth: 500,
            ),
            const SizedBox(height: 12),
            _buildLabelRow(
              label: 'Irrigation Frequency in Days',
              icon: Icons.water_outlined,
              value: plantType.irrigationFrequencyInDays.toString(),
            ),
            const SizedBox(height: 12),
            plantType.bloomMonths == null
                ? const SizedBox.shrink()
                : _buildLabelRow(
                    label: 'Bloom Month',
                    icon: Icons.grass_outlined,
                    value: plantType.bloomMonths.toString(),
                  ),
            const SizedBox(height: 12),
            _buildLabelRow(
              label: 'Edible',
              icon: plantType.edible ?? false
                  ? Icons.spa_outlined
                  : Icons.sick_outlined,
              value: plantType.edible.toString(),
            ),
            const SizedBox(height: 12),
            _buildLabelRow(
              label: 'Created at',
              icon: Icons.calendar_today_outlined,
              value: _formatDateTime(plantType.createdAt?.getDateTimeInUtc()),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLabelRow({
    required String label,
    required IconData icon,
    required String value,
    double maxWidth = double.infinity,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    label,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const SizedBox(width: 29), // Empty space in the bottom-left corner
                  Container(
                    constraints: BoxConstraints(maxWidth: maxWidth),
                    child: Text(
                      value,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _formatDateTime(DateTime? dateTime) {
    return dateTime == null ? "Unkown" : DateFormat.yMMMMd().format(dateTime);
  }
}
