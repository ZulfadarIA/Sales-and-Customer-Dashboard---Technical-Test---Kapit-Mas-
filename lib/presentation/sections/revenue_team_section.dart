import 'package:flutter/material.dart';
import '../../core/widgets/section_title.dart';
import '../../core/widgets/chart_container.dart';

class RevenueTeamSection extends StatelessWidget {
  const RevenueTeamSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle("Revenue per Sales Team"),
        const SizedBox(height: 16),
        ChartContainer(
          title: "Revenue per Sales Team",
          subtitle: "Category breakdown & team performance",
          child: Container(
            height: 300,
            alignment: Alignment.center,
            child: const Text("Horizontal Bar Chart Placeholder"),
          ),
        ),
      ],
    );
  }
}
