import 'package:dashboard_sales_and_customer/presentation/pages/dashboard_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DashboardApp());
}

class DashboardApp extends StatelessWidget {
  const DashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sales & Customer Dashboard",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F6FA),
        primarySwatch: Colors.indigo,
        fontFamily: "Roboto",
      ),
      home: const DashboardPage(),
    );
  }
}
