import 'package:flutter/material.dart';

class DeepDiveTable extends StatelessWidget {
  const DeepDiveTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black12),
      ),
      child: DataTable(
        columns: const [
          DataColumn(label: Text("Metric")),
          DataColumn(label: Text("Value")),
        ],
        rows: const [
          DataRow(cells: [
            DataCell(Text("Total Orders")),
            DataCell(Text("—")),
          ]),
          DataRow(cells: [
            DataCell(Text("Total Amount")),
            DataCell(Text("—")),
          ]),
          DataRow(cells: [
            DataCell(Text("Services Used")),
            DataCell(Text("—")),
          ]),
          DataRow(cells: [
            DataCell(Text("Last Order Date")),
            DataCell(Text("—")),
          ]),
        ],
      ),
    );
  }
}
