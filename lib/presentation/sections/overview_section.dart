import 'package:dashboard_sales_and_customer/core/widgets/chart_container.dart';
import 'package:dashboard_sales_and_customer/core/widgets/sales_legend.dart';
import 'package:flutter/material.dart';

import '../charts/bar_chart_widget.dart';

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
            height: 350,
            alignment: Alignment.center,
            child: const Column(
              children: [
                SalesBarChart(
                  sales2022: [
                    288516,
                    310000,
                    320000,
                    350000,
                    410000,
                    450000,
                    470000,
                    480000,
                    490000,
                    520000,
                    500000,
                    450000
                  ],
                  sales2023: [
                    346534,
                    360000,
                    380000,
                    400000,
                    450000,
                    470000,
                    490000,
                    520000,
                    540000,
                    600000,
                    570000,
                    520000
                  ],
                  sales2024: [
                    346534,
                    360000,
                    380000,
                    400000,
                    450000,
                    470000,
                    490000,
                    520000,
                    540000,
                    600000,
                    570000,
                    520000
                  ],
                  sales2025: [
                    346534,
                    360000,
                    380000,
                    400000,
                    450000,
                    470000,
                    490000,
                    520000,
                    540000,
                    600000,
                    570000,
                    520000
                  ],
                  target2025: [
                    346534,
                    360000,
                    380000,
                    400000,
                    450000,
                    470000,
                    490000,
                    520000,
                    540000,
                    600000,
                    570000,
                    520000
                  ],
                ),
                const SizedBox(height: 16),
                const SalesLegend()
              ],
            )),
      ),
    ]);
  }
}
