import 'package:studentdm/bar_graph/individual_bar.dart';

class BarData {
  final double sun;
  final double mon;
  final double tue;
  final double wed;
  final double thu;
  final double fri;
  final double sat;

  BarData(
      {required this.sun,
      required this.mon,
      required this.tue,
      required this.wed,
      required this.thu,
      required this.fri,
      required this.sat});
  List<IndividualBar> barData = [];

  void intializeBarData() {
    barData = [
      IndividualBar(x: 0, y: sun),
      IndividualBar(x: 0, y: mon),
      IndividualBar(x: 0, y: tue),
      IndividualBar(x: 0, y: wed),
      IndividualBar(x: 0, y: thu),
      IndividualBar(x: 0, y: fri),
      IndividualBar(x: 0, y: sat),
    ];
  }
}
