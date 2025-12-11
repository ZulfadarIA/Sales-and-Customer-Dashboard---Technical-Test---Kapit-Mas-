import 'package:flutter/material.dart';

class SalesLegend extends StatelessWidget {
  const SalesLegend({super.key});

  Widget _item(Color color, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 12,
      runSpacing: 8,
      children: [
        _item(Colors.orange.shade300, "SALES 2022"),
        _item(Colors.blue.shade400, "SALES 2023"),
        _item(Colors.green.shade400, "SALES 2024"),
        _item(Colors.yellow.shade600, "SALES 2025"),
        _item(Colors.pink.shade300, "SALES TARGET 2025"),
      ],
    );
  }
}
