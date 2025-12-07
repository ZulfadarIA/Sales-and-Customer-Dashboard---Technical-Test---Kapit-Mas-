import 'package:flutter/material.dart';
import '../../core/widgets/section_title.dart';
import '../tables/customer_rank_table.dart';

class Top10CustomersSection extends StatelessWidget {
  const Top10CustomersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle("Top 10 Customer"),
        const SizedBox(height: 16),
        const CustomerRankTable(),
      ],
    );
  }
}
