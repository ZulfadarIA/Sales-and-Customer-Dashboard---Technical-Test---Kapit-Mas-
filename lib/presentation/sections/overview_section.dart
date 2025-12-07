import 'package:dashboard_sales_and_customer/core/widgets/chart_container.dart';
import 'package:flutter/material.dart';

class OverviewSection extends StatelessWidget {
  const OverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ChartContainer(
        title: "Overview Total Sales",
        subtitle:
            "SALES 2022 vs SALES 2023 vs SALES 2024 vs SALES 2025 vs BUDGET 2025",
        statTitle: "YTD 2025",
        statTarget: 7952364,
        statValue: 10965000,
        child: Container(
          height: 300,
          alignment: Alignment.center,
          child: const Text("Horizontal Bar Chart Placeholder"),
        ),
      ),
    ]);
  }
}
