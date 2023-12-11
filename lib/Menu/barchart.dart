import 'package:charts_flutter/flutter.dart' as charts;

class BarChart{
  final int month;
  final int developers;
  final charts.Color barColor;

  BarChart({required this.barColor, required this.developers, required this.month});
}