import 'package:flutter/material.dart';
import '../../core/widgets/section_title.dart';
import '../../core/widgets/chart_container.dart';

class ServiceCategorySection extends StatelessWidget {
  const ServiceCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle("Sales Services Category"),
        const SizedBox(height: 16),
        ChartContainer(
          title: "Sales Services Category",
          subtitle: "Service revenue by category type",
          child: Container(
            height: 300,
            alignment: Alignment.center,
            child: const Text("Stacked Bar Chart Placeholder"),
          ),
        ),
      ],
    );
  }
}
