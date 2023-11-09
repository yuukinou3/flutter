import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class MyHeatMap extends StatelessWidget {
  const MyHeatMap({super.key});

  @override
  Widget build(BuildContext context) {
    return HeatMap(
  datasets: {
    DateTime(2023, 11, 22): 3,
    DateTime(2023, 11, 23): 7,
    DateTime(2023, 11, 24): 10,
    DateTime(2023, 11, 25): 13,
    DateTime(2023, 11, 26): 6,
  },
  startDate: DateTime.now(),
  endDate: DateTime.now().add(Duration(days: 40)),
  size: 40,
  textColor: Colors.white,
  colorMode: ColorMode.opacity,
  showText: false,
  scrollable: true,
  colorsets: {
    1: const Color.fromARGB(20, 2, 179, 8),
    2: const Color.fromARGB(40, 2, 179, 8),
    3: const Color.fromARGB(60, 2, 179, 8),
    4: const Color.fromARGB(80, 2, 179, 8),
    5: const Color.fromARGB(100, 2, 179, 8),
    6: const Color.fromARGB(120, 2, 179, 8),
    7: const Color.fromARGB(140, 2, 179, 8),
    8: const Color.fromARGB(160, 2, 179, 8),
    9: const Color.fromARGB(180, 2, 179, 8),
    10: const Color.fromARGB(220, 2, 179, 8),
  },
  onClick: (value) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.toString())));
  },
);
  }
}