import 'package:flutter/material.dart';

class CustomerRankTable extends StatelessWidget {
  const CustomerRankTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black12),
      ),
      child: DataTable(
        columns: const [
          DataColumn(label: Text("Rank")),
          DataColumn(label: Text("Customer Name")),
          DataColumn(label: Text("Sales 2025")),
          DataColumn(label: Text("Qty")),
          DataColumn(label: Text("Growth")),
          DataColumn(label: Text("Action")),
        ],
        rows: List.generate(10, (index) {
          return DataRow(
            cells: [
              DataCell(Text("#${index + 1}")),
              DataCell(Text("Customer ${index + 1}")),
              const DataCell(Text("\$0.00")),
              const DataCell(Text("0")),
              const DataCell(Text("0%")),
              const DataCell(Text("Details")),
            ],
          );
        }),
      ),
    );
  }
}
