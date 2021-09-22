import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wha_hifi_app/constant.dart';
import 'package:wha_hifi_app/models/analytics_model.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({
    Key? key,
  }) : super(key: key);

  AnalyticsModel aM1 = AnalyticsModel('assets/svgs/manlove.svg', "Patient", "200");

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        height: 125,
        width: 165,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: primaryColor,
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
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 4.0),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(
                    aM1.svgUrl,
                    semanticsLabel: 'Man Love',
                    height: 5,
                    width: 5,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "${aM1.labelNumber}\n${aM1.labelName}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
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
