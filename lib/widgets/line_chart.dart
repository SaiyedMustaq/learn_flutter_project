import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/color/ColorPlate.dart';



class LineReportChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2,
      child: LineChart(LineChartData(
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(show: false),
          lineBarsData: [
            LineChartBarData(
                spots: getSport(),
                isCurved: true,
                dotData: FlDotData(show: false),
                belowBarData: BarAreaData(show: false),
                colors: [conPrimaryColor],
                barWidth: 4
            )
          ]
      )),
    );
  }
}
List<FlSpot> getSport(){

  return[
    FlSpot(0,5),
    FlSpot(1,1.5),
    FlSpot(2,25),
    FlSpot(3,.7),
    FlSpot(4,35),
    FlSpot(5,2),
    FlSpot(6,22),
    FlSpot(7,2),
    FlSpot(8,2),
    FlSpot(9,2),
    FlSpot(10,20),

  ];
}