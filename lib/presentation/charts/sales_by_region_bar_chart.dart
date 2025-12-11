import 'package:dashboard_sales_and_customer/data/models/region_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SalesByRegionBarChart extends StatelessWidget {
  final List<RegionData> regions;

  const SalesByRegionBarChart({
    super.key,
    required this.regions,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: BarChart(
        BarChartData(
          barGroups: _buildBarGroups(),
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            horizontalInterval: _getGridInterval(),
            getDrawingHorizontalLine: (value) => FlLine(
              color: Colors.grey.shade300,
              strokeWidth: 1,
            ),
          ),

          // title
          titlesData: FlTitlesData(
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 38,
                getTitlesWidget: (value, meta) {
                  final i = value.toInt();
                  if (i < 0 || i >= regions.length) return const SizedBox();
                  return Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      regions[i].name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                interval: _getGridInterval(),
                getTitlesWidget: (value, _) {
                  return Text(
                    _formatNumber(value),
                    style: const TextStyle(fontSize: 10),
                  );
                },
              ),
            ),
          ),

          borderData: FlBorderData(show: false),

          // bar touch tooltip
          barTouchData: BarTouchData(
            enabled: true,
            handleBuiltInTouches: true,
            touchTooltipData: BarTouchTooltipData(
              tooltipPadding: const EdgeInsets.all(10),
              tooltipRoundedRadius: 6,
              tooltipBgColor: Colors.white,
              tooltipMargin: 8,
              getTooltipItem: (group, groupIndex, rod, rodIndex) {
                final region = regions[group.x.toInt()];

                return BarTooltipItem(
                  "${region.name}\n",
                  const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "Revenue: ${_formatNumber(region.value)}\n",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(221, 177, 177, 177),
                      ),
                    ),
                    TextSpan(
                      text: "Growth: ${region.growth}",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(221, 177, 177, 177),
                      ),
                    ),
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
    return List.generate(regions.length, (index) {
      final r = regions[index];

      return BarChartGroupData(
        x: index,
        barsSpace: 8,
        barRods: [
          BarChartRodData(
            toY: r.value,
            width: 90,
            borderRadius: BorderRadius.circular(4),
            color: const Color.fromARGB(255, 112, 0, 163),
          ),
        ],
      );
    });
  }

  double _getGridInterval() {
    final maxVal = regions.map((e) => e.value).reduce((a, b) => a > b ? a : b);
    return maxVal / 4;
  }

  String _formatNumber(double value) {
    if (value >= 1000000) {
      return "${(value / 1000000).toStringAsFixed(1)}M";
    }
    return value.toStringAsFixed(0);
  }
}
