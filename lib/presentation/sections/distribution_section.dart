import 'package:dashboard_sales_and_customer/data/models/region_model.dart';
import 'package:dashboard_sales_and_customer/presentation/charts/donut_chart_widget.dart';
import 'package:dashboard_sales_and_customer/presentation/charts/sales_by_region_bar_chart.dart';
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
                statTitle: "Top Category",
                category: "Sales Services",
                child: Container(
                  height: 300,
                  alignment: Alignment.center,
                  child: const SalesByCategoryDonutChart(
                    data: {
                      "Sales Services": 35,
                      "Sales Stock": 25,
                      "Sales Production": 20,
                      "Sales Sample": 12,
                      "Sales Material": 8,
                    },
                  ),
                ),
              ),
            ),

            const SizedBox(width: 16),

            // Sales by Region
            Expanded(
              child: ChartContainer(
                title: "Sales by Region",
                subtitle: "Revenue distribution & growth rate",
                statTitle: "Top Region",
                category: "North America",
                child: Container(
                  height: 300,
                  alignment: Alignment.center,
                  child: const SalesByRegionBarChart(
                    regions: [
                      RegionData(
                          name: "North America",
                          value: 10000000,
                          growth: "+12%"),
                      RegionData(name: "Europe", value: 7500000, growth: "+8%"),
                      RegionData(
                          name: "Asia Pacific", value: 5000000, growth: "+5%"),
                      RegionData(
                          name: "Latin America", value: 3800000, growth: "+3%"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
