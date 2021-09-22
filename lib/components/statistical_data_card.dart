import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';

class StatisticalDataCard extends StatelessWidget {
  const StatisticalDataCard({
    Key? key,
    required this.data,
    required this.patientNumber,
    required this.label,
    required this.color,
  }) : super(key: key);

  final List<double> data;
  final int patientNumber;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      height: 90,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 4.0),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text(
                  '${patientNumber.toString()}',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 50,
                  height: 50,
                  child: Sparkline(
                    data: data,
                    lineWidth: 5.0,
                    lineColor: color,
                  ),
                ),
              ],
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
