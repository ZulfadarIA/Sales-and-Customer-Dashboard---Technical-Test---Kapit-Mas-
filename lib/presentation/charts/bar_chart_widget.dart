import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SalesBarChart extends StatelessWidget {
  final List<double> sales2022;
  final List<double> sales2023;
  final List<double> sales2024;
  final List<double> sales2025;
  final List<double> target2025;

  const SalesBarChart({
    super.key,
    required this.sales2022,
    required this.sales2023,
    required this.sales2024,
    required this.sales2025,
    required this.target2025,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: BarChart(
        BarChartData(
          barGroups: _buildBarGroups(),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              axisNameWidget: const Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  "MONTH",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ),
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  return Text(
                    value.toInt().toString(),
                    style: const TextStyle(fontSize: 12),
                  );
                },
              ),
            ),
            leftTitles: AxisTitles(
              axisNameWidget: const Padding(
                padding: EdgeInsets.fromLTRB(55, 12, 0, 12),
                child: RotatedBox(
                  quarterTurns: 4,
                  child: Text(
                    "SALES",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 45,
                getTitlesWidget: (value, _) => Text(
                  value.toInt().toString(),
                  style: const TextStyle(fontSize: 10),
                ),
              ),
            ),
            topTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          gridData: FlGridData(show: true, horizontalInterval: 500000),
          borderData: FlBorderData(show: false),
          barTouchData: BarTouchData(
            enabled: true,
            touchTooltipData: BarTouchTooltipData(
              tooltipBgColor: Colors.white,
              // textStyle: const TextStyle(color: Colors.black, fontSize: 12),
              getTooltipItem: (group, groupIndex, rod, rodIndex) {
                final month = group.x.toInt();
                return BarTooltipItem(
                  'Month $month\n',
                  const TextStyle(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: 'SALES 2022: ${sales2022[groupIndex].toInt()}\n'),
                    TextSpan(
                        text: 'SALES 2023: ${sales2023[groupIndex].toInt()}\n'),
                    TextSpan(
                        text: 'SALES 2024: ${sales2024[groupIndex].toInt()}\n'),
                    TextSpan(
                        text: 'SALES 2025: ${sales2025[groupIndex].toInt()}\n'),
                    TextSpan(
                        text:
                            'TARGET 2025: ${target2025[groupIndex].toInt()}\n'),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  List<BarChartGroupData> _buildBarGroups() {
    return List.generate(12, (index) {
      final i = index;

      return BarChartGroupData(
        x: i + 1,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
            toY: sales2022[i],
            color: Colors.orange.shade300,
            width: 12,
            borderRadius: BorderRadius.circular(3),
          ),
          BarChartRodData(
            toY: sales2023[i],
            color: Colors.blue.shade400,
            width: 12,
            borderRadius: BorderRadius.circular(3),
          ),
          BarChartRodData(
            toY: sales2024[i],
            color: Colors.green.shade400,
            width: 12,
            borderRadius: BorderRadius.circular(3),
          ),
          BarChartRodData(
            toY: sales2025[i],
            color: Colors.yellow.shade600,
            width: 12,
            borderRadius: BorderRadius.circular(3),
          ),
          BarChartRodData(
            toY: target2025[i],
            color: Colors.pink.shade300,
            width: 12,
            borderRadius: BorderRadius.circular(3),
          ),
        ],
      );
    });
  }
}
