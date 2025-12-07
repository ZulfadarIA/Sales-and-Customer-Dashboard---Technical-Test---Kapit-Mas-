import 'package:dashboard_sales_and_customer/core/widgets/app_bar.dart';
import 'package:dashboard_sales_and_customer/core/widgets/filter_bar.dart';
import 'package:dashboard_sales_and_customer/presentation/sections/deep_dive_section.dart';
import 'package:dashboard_sales_and_customer/presentation/sections/distribution_section.dart';
import 'package:dashboard_sales_and_customer/presentation/sections/key_performance_section.dart';
import 'package:dashboard_sales_and_customer/presentation/sections/overview_section.dart';
import 'package:dashboard_sales_and_customer/presentation/sections/revenue_team_section.dart';
import 'package:dashboard_sales_and_customer/presentation/sections/service_category_section.dart';
import 'package:dashboard_sales_and_customer/presentation/sections/stock_category_section.dart';
import 'package:dashboard_sales_and_customer/presentation/sections/top10_customers_section.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Top bar
          SliverPersistentHeader(
            pinned: true,
            delegate: _StickyHeaderDelegate(
              minHeight: 80,
              maxHeight: 80,
              child: const AppTopBar(),
            ),
          ),

          // filter bar
          SliverPersistentHeader(
            pinned: true,
            delegate: _StickyHeaderDelegate(
              minHeight: 120,
              maxHeight: 120,
              child: const FilterBar(),
            ),
          ),

          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KeyPerformanceSection(),
                  SizedBox(height: 32),
                  OverviewSection(),
                  SizedBox(height: 32),
                  DistributionSection(),
                  SizedBox(height: 32),
                  RevenueTeamSection(),
                  SizedBox(height: 32),
                  ServiceCategorySection(),
                  SizedBox(height: 32),
                  StockCategorySection(),
                  SizedBox(height: 32),
                  Top10CustomersSection(),
                  SizedBox(height: 32),
                  DeepDiveSection(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double minHeight;
  final double maxHeight;

  _StickyHeaderDelegate({
    required this.child,
    required this.minHeight,
    required this.maxHeight,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      height: maxExtent,
      child: Material(
        color: Colors.white,
        child: child,
      ),
    );
  }

  @override
  bool shouldRebuild(covariant _StickyHeaderDelegate oldDelegate) {
    return oldDelegate.child != child ||
        oldDelegate.minHeight != minHeight ||
        oldDelegate.maxHeight != maxHeight;
  }
}
