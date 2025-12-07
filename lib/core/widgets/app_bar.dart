import 'package:flutter/material.dart';

class AppTopBar extends StatelessWidget {
  const AppTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 1,
          color: Colors.grey.shade300,
        ),
        const SizedBox(height: 18),
        Column(
          children: [
            const Text(
              "Sales & Customer",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 85, 7, 150),
              ),
            ),
            const SizedBox(height: 6),
            Container(
              height: 3,
              width: 160,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 85, 7, 150),
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
            ),
          ],
        ),
        const SizedBox(height: 18),
        Container(
          height: 1,
          color: Colors.grey.shade300,
        ),
      ],
    );
  }
}
