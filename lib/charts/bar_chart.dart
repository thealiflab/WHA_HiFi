import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StraightBarChart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StraightBarChartState();
}

class StraightBarChartState extends State<StraightBarChart> {

  final List<double> weeklyData = [5.0, 6.5, 5.0, 7.5, 9.0];
  late String weekDay;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: Colors.white,
      ),
      margin: EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: BarChart(
                mainBarData(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  BarChartGroupData _buildBar(
      int x,
      double y,) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          y: y,
          width: 22,
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            y: 20,
          ),
        ),
      ],
    );
  }

  List<BarChartGroupData> _buildAllBars() {
    return List.generate(
      weeklyData.length,
          (index) => _buildBar(index, weeklyData[index],),
    );
  }

  BarChartData mainBarData() {
    return BarChartData(
      titlesData: _buildAxes(),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: _buildAllBars(),
    );
  }

  FlTitlesData _buildAxes() {
    return FlTitlesData(
      // Build X axis.
      bottomTitles: SideTitles(
        showTitles: true,
        margin: 16,
        getTitles: (double value) {
          switch (value.toInt()) {
            case 0:
              return '0-15';
            case 1:
              return '16-30';
            case 2:
              return '31-45';
            case 3:
              return '46-60';
            case 4:
              return '61+';
            default:
              return '';
          }
        },
      ),
      // Build Y axis.
      leftTitles: SideTitles(
        showTitles: true,
        getTitles: (double value) {
          switch (value.toInt()) {
            case 0:
              return '0';
            case 1:
              return '10';
            case 2:
              return '20';
            case 3:
              return '30';
            case 4:
              return '40';
            default:
              return '';
          }
        },
      ),
    );
  }

}
