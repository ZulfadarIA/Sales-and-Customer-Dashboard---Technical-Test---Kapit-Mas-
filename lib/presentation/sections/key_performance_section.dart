import 'package:flutter/material.dart';
import '../../core/widgets/kpi_card.dart';

class KeyPerformanceSection extends StatelessWidget {
  const KeyPerformanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Key Performance Indicators",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 16),

        //row 1
        Row(
          children: [
            Expanded(
              child: KpiCard(
                icon: Icons.attach_money_outlined,
                title: "Revenue vs Target",
                value: "23.410.000",
                change: "-2.9%",
                subtitle: "vs last month",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: KpiCard(
                icon: Icons.radar_outlined,
                title: "Lead Conversion Rate",
                value: "4.0%",
                change: "0.0%",
                subtitle: "vs last month",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: KpiCard(
                icon: Icons.description_outlined,
                title: "Active Opportunities",
                value: "3,746",
                change: "+16.2%",
                subtitle: "vs last month",
              ),
            ),
          ],
        ),

        SizedBox(height: 16),

        // row 2
        Row(
          children: [
            Expanded(
              child: KpiCard(
                icon: Icons.calendar_today_outlined,
                title: "Sales Orders (YTD)",
                value: "420",
                change: "-0.6%",
                subtitle: "vs last month",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: KpiCard(
                title: "Total Orders",
                value: "974",
                change: "",
                subtitle: "From top 10 customers",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: KpiCard(
                title: "Average Lead Time",
                value: "15.6 days",
                change: "",
                subtitle: "Top 10 customers avg",
              ),
            ),
          ],
        ),

        SizedBox(height: 20),
      ],
    );
  }
}
