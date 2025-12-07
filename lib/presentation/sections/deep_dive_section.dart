import 'package:flutter/material.dart';
import '../../core/widgets/section_title.dart';
import '../tables/deep_dive_table.dart';

class DeepDiveSection extends StatelessWidget {
  const DeepDiveSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle("Customer Deep Dive"),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black12),
          ),
          child: const Text("Customer selection dropdown placeholder"),
        ),
        const SizedBox(height: 16),
        const DeepDiveTable(),
      ],
    );
  }
}
