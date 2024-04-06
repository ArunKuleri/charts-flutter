import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:studentdm/bar_graph/bar_data.dart';

class BarGraph extends StatelessWidget {
  final List weeklySummary;
  const BarGraph({super.key, required this.weeklySummary});

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
        sun: weeklySummary[1],
        mon: weeklySummary[1],
        tue: weeklySummary[2],
        wed: weeklySummary[3],
        thu: weeklySummary[4],
        fri: weeklySummary[5],
        sat: weeklySummary[6]);
    myBarData.intializeBarData();
    return BarChart(BarChartData(
      maxY: 100,
      minY: 0,
      gridData: FlGridData(show: false),
      borderData: FlBorderData(show: false),
      titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
              sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getBottomTitles,
          ))),
      barGroups: myBarData.barData
          .map((data) => BarChartGroupData(x: data.x, barRods: [
                BarChartRodData(
                  toY: data.y,
                  color: Colors.blueAccent,
                  width: 20,
                  borderRadius: BorderRadius.circular(5),
                  backDrawRodData: BackgroundBarChartRodData(
                      show: true, toY: 100, color: Colors.grey),
                )
              ]))
          .toList(),
    ));
  }
}

Widget getBottomTitles(double value, TitleMeta meta) {
  const Style = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  Widget? text;
  switch (value.toInt()) {
    case 0:
      text = const Text(
        "S",
        style: Style,
      );
      break;
    case 1:
      text = const Text(
        "M",
        style: Style,
      );
      break;
    case 2:
      text = const Text(
        "T",
        style: Style,
      );
      break;
    case 3:
      text = const Text(
        "W",
        style: Style,
      );
      break;
    case 4:
      text = const Text(
        "Th",
        style: Style,
      );
      break;
    case 5:
      text = const Text(
        "F",
        style: Style,
      );
      break;
    case 6:
      text = const Text(
        "S",
        style: Style,
      );
      break;
  }
  return SideTitleWidget(axisSide: meta.axisSide, child: text!);
}
