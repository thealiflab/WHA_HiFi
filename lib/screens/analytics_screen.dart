import 'package:flutter/material.dart';
import 'package:wha_hifi_app/components/category_card.dart';
import 'package:wha_hifi_app/components/custom_vertical_container.dart';
import 'package:wha_hifi_app/components/single_appointment_card.dart';
import 'package:wha_hifi_app/components/statistical_data_card.dart';
import 'package:wha_hifi_app/components/total_patient_card.dart';
import 'package:wha_hifi_app/constant.dart';
import 'package:pie_chart/pie_chart.dart';

// ignore: must_be_immutable
class AnalyticsScreen extends StatelessWidget {
  AnalyticsScreen({Key? key}) : super(key: key);
  var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
  Map<String, double> dataMapPieChart = {
    "Positive": 5,
    "Negative": 3,
    "Not Tested": 2,
  };
  List<Color> caseColorList = [
    Color(0xFF00FF88),
    Color(0xFF2E3888),
    Color(0xFF5969E1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBEDFB),
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
                  "DATA ANALYTICS",
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
                    return CategoryCard();
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomVerticalContainer(
                    colorPref: Colors.white,
                    childItem: Column(
                      children: [
                        Text(
                          "Statistical Data",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        StatisticalDataCard(
                          label: "New Patient",
                          data: data,
                          patientNumber: 160,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        StatisticalDataCard(
                          label: "Old Patient",
                          data: data,
                          patientNumber: 40,
                        ),
                      ],
                    ),
                  ),
                  CustomVerticalContainer(
                    colorPref: Color(0xFF8CF3C3),
                    childItem: Column(
                      children: [
                        Text(
                          "Total Patient",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TotalPatientCard(
                          label: "Male",
                          svgUrl: "assets/svgs/male.svg",
                          percentage: 63,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TotalPatientCard(
                          label: "Female",
                          svgUrl: "assets/svgs/female.svg",
                          percentage: 37,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomVerticalContainer(
                    childItem: Column(
                      children: [
                        Text(
                          "COVID 19 Case",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        PieChart(
                          dataMap: dataMapPieChart,
                          chartLegendSpacing: 35,
                          chartRadius: MediaQuery.of(context).size.width / 6,
                          chartType: ChartType.ring,
                          colorList: caseColorList,
                          ringStrokeWidth: 20,
                          centerText: "Over All\n91%",
                          legendOptions: LegendOptions(
                            showLegendsInRow: false,
                            legendPosition: LegendPosition.bottom,
                            showLegends: true,
                            legendTextStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          chartValuesOptions: ChartValuesOptions(
                            showChartValueBackground: false,
                            showChartValues: false,
                            showChartValuesInPercentage: false,
                            showChartValuesOutside: false,
                            decimalPlaces: 1,
                          ),
                        ),
                      ],
                    ),
                    colorPref: Color(0xFFAAB2F3),
                  ),
                  CustomVerticalContainer(
                      childItem: Column(
                        children: [
                          Text(
                            "Appointment",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Card(
                                color: Color(0xFF239B63),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "20",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                "Sep",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFF239B63),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Monday",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color(0xFF8CF3C3),
                            child: Padding(
                              padding: EdgeInsets.all(6),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "12 Appointments",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SingleAppointmentCard(
                                    nameLabel: "Md "
                                        "Rahim",
                                    appointmentTime: "10:10 am\n11:15 am",
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SingleAppointmentCard(
                                    nameLabel: "Md "
                                        "Rahim",
                                    appointmentTime: "10:10 am\n11:15 am",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      colorPref: Colors.white)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
