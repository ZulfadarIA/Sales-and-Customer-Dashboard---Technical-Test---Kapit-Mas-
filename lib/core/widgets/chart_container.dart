import 'package:flutter/material.dart';

class ChartContainer extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget child;
  final double? height;
  final String? statTitle;
  final int? statValue;
  final int? statTarget;

  const ChartContainer({
    super.key,
    required this.title,
    this.subtitle,
    required this.child,
    this.height,
    this.statTitle,
    this.statValue,
    this.statTarget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.black12,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      subtitle!,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ],
              ),
              if (statTitle != null || statValue != null || statTarget != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (statTitle != null)
                      Text(
                        statTitle!,
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.black54,
                        ),
                      ),
                    if (statValue != null)
                      Text(
                        "\$$statValue",
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 85, 7, 150),
                        ),
                      ),
                    if (statTarget != null)
                      Text(
                        "target: \$$statTarget",
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.black54,
                        ),
                      ),
                  ],
                ),
            ],
          ),

          const SizedBox(height: 16),

          // Chart content
          SizedBox(
            height: height ?? 250,
            child: child,
          )
        ],
      ),
    );
  }
}
