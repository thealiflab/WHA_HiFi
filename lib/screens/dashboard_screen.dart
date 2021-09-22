import 'package:flutter/material.dart';
import 'package:wha_hifi_app/charts/bar_chart.dart';
import 'package:wha_hifi_app/components/dashboard_drawer.dart';
import 'package:wha_hifi_app/components/statistical_data_card.dart';
import 'package:wha_hifi_app/components/total_patient_card.dart';
import 'package:wha_hifi_app/constant.dart';
import 'package:wha_hifi_app/components/category_card.dart';
import 'package:wha_hifi_app/charts/line_chart.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBEDFB),
      drawer: DashboardDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 42,
            horizontal: 15,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "DAILY ANALYTICS",
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 130,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, index) {
                    //TODO Temp Gesture Detector
                    return GestureDetector(
                      onTap: () => Navigator.of(context).pushNamed('/analytics'),
                      child: CategoryCard(),);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
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
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 12),
                  child: Column(
                    children: [
                      Text(
                          "TOTAL PATIENT",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2E3888),
                          )
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                                "This Year",
                                style: TextStyle(
                                  fontSize: 16,
                                )
                            ),
                            Icon(Icons.arrow_downward),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StatisticalDataCard(data: data, patientNumber: 160, label: "Old Patient", color: Color(0xFF2E3888),),
                          StatisticalDataCard(data: data, patientNumber: 60, label: "New Patient", color: Color(0xFF00FF88),),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      LineChartSample1(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
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
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 15),
                  child: Column(
                    children: [
                      Text(
                          "PATIENTS BY GENDER & AGE",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2E3888),
                          )
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                                "This Year",
                                style: TextStyle(
                                  fontSize: 16,
                                )
                            ),
                            Icon(Icons.arrow_downward),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TotalPatientCard(
                            label: "Male",
                            svgUrl: "assets/svgs/male.svg",
                            percentage: 63,
                          ),
                          TotalPatientCard(
                            label: "Female",
                            svgUrl: "assets/svgs/female.svg",
                            percentage: 37,
                          ),
                        ],
                      ),
                      StraightBarChart(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
