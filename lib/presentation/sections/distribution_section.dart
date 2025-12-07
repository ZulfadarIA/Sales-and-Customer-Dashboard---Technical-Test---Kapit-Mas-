import 'package:flutter/material.dart';
import '../../core/widgets/section_title.dart';
import '../../core/widgets/chart_container.dart';

class DistributionSection extends StatelessWidget {
  const DistributionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle("Distribution & Performance"),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sales by Category
            Expanded(
              child: ChartContainer(
                title: "Sales by Category",
                subtitle: "Revenue distribution by category group",
                child: Container(
                  height: 250,
                  alignment: Alignment.center,
                  child: const Text("Pie Chart Placeholder"),
                ),
              ),
            ),

            const SizedBox(width: 16),

            // Sales by Region
            Expanded(
              child: ChartContainer(
                title: "Sales by Region",
                subtitle: "Revenue distribution & growth rate",
                child: Container(
                  height: 250,
                  alignment: Alignment.center,
                  child: const Text("Bar Chart Placeholder"),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
