import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SalesByCategoryDonutChart extends StatelessWidget {
  final Map<String, double> data;

  const SalesByCategoryDonutChart({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    // warna slice
    final colors = [
      const Color(0xFF4E79A7),
      const Color(0xFFF28E2B),
      const Color(0xFFE15759),
      const Color(0xFF76B7B2),
      const Color(0xFF59A14F),
      const Color(0xFFEDC949),
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 200,
          width: 200,
          child: Stack(
            alignment: Alignment.center,
            children: [
              PieChart(
                PieChartData(
                  sectionsSpace: 2,
                  centerSpaceRadius: 55,
                  startDegreeOffset: -90,
                  sections: List.generate(data.length, (i) {
                    final entry = data.entries.toList()[i];

                    return PieChartSectionData(
                      value: entry.value,
                      radius: 60,
                      color: colors[i % colors.length],
                      showTitle: false,
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 50),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 24,
          runSpacing: 8,
          children: List.generate(data.length, (i) {
            final entry = data.entries.toList()[i];

            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: colors[i % colors.length],
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 2),
                Text(
                  entry.key,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            );
          }),
        ),
      ],
    );
  }

  String _getTopCategory(Map<String, double> data) {
    return data.entries.reduce((a, b) => a.value > b.value ? a : b).key;
  }
}
