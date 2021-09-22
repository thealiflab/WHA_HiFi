import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LineChartSample1State();
}

class LineChartSample1State extends State<LineChartSample1> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width * 1 ,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Color(0xFFAAB2F3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 16.0, left: 6.0),
              child: LineChart(sampleData1()),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  LineChartData sampleData1() {
    return LineChartData(
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.white,
        ),
        handleBuiltInTouches: true,
      ),
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          margin: 10,
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return 'Jan';
              case 2:
                return 'Feb';
              case 3:
                return 'Mar';
              case 4:
                return 'Apr';
              case 5:
                return 'May';
              case 6:
                return 'Jun';
              case 7:
                return 'Jul';
              case 8:
                return 'Aug';
              case 9:
                return 'Sep';
              case 10:
                return 'Oct';
              // case 11:
              //   return 'Nov';
              case 12:
                return 'Dec';}
            return '';
          },
        ),
        topTitles: SideTitles(
          showTitles: false,
        ),
        rightTitles: SideTitles(
          showTitles: false,
        ),
        leftTitles: SideTitles(
          showTitles: false,
          // getTitles: (value) {
          //   switch (value.toInt()) {
          //     case 1:
          //       return '1m';
          //     case 2:
          //       return '2m';
          //     case 3:
          //       return '3m';
          //     case 4:
          //       return '5m';
          //   }
          //   return '';
          // },
          margin: 8,
          reservedSize: 30,
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border(
          bottom: BorderSide(
            color: Color(0xFF2E3888),
            width: 1,
          ),
          left: BorderSide(
            color: Color(0xFF2E3888),
            width: 1,
          ),
          right: BorderSide(
            color: Colors.transparent,
          ),
          top: BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
      minX: 0,
      maxX: 11,
      maxY: 4,
      minY: 0,
      lineBarsData: linesBarData1(),
    );
  }

  List<LineChartBarData> linesBarData1() {
    final LineChartBarData lineChartBarData1 = LineChartBarData(
      // all the spots of the line chart.
      spots: [
        FlSpot(1, 2.8),
        FlSpot(3, 1.9),
        FlSpot(4, 2.7),
        FlSpot(5, 1.3),
        FlSpot(6, 2.5),
      ],
      // curved or straight line.
      isCurved: true,
      // Color of the rod.
      colors: const [
        Color(0xFF2E3888),
      ],
      barWidth: 8,
      // Data of dot.
      dotData: FlDotData(
        show: false,
      ),
      // To highlight the data below the line curve.
      belowBarData: BarAreaData(
        show: false,
      ),
    );

    final LineChartBarData lineChartBarData2 = LineChartBarData(
      spots: [
        FlSpot(1, 1.3),
        FlSpot(2, 2),
        FlSpot(3, 1.7),
        FlSpot(4, 2),
        FlSpot(5, 2),
        FlSpot(6, 2.2),
      ],
      isCurved: true,
      colors: [
        const Color(0xff4af699),
      ],
      barWidth: 8,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );


    return [
      lineChartBarData1,
      lineChartBarData2,
    ];
  }
}
