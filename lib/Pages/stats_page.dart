import 'package:flutter/material.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({super.key});

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);

    return Center(
      child: const Text('Your Stats', semanticsLabel: "now"),
    );
  }
}
