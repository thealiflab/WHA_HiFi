import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                Colors.white,
                Color(0xFF8CF3C3),
                Color(0xFF239B63),

              ],
            ),
          ),
          child: ListView(children: [
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.home,
                      color: Color(0xFF239B63),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Dashboard",
                      style:
                          TextStyle(color: Color(0xFF239B63), fontSize: 18),
                    )
                  ],
                ),
              ),
              onTap: () {
              },
            ),
            ListTile(
              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      "Survey",
                      style:
                          TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              ),
              onTap: () {

              },
            ),
            ListTile(
              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      "Duty Information",
                      style:
                          TextStyle(color: Colors.black, fontSize: 18),
                    )
                  ],
                ),
              ),
              onTap: () {
              },
            ),
            ListTile(
              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      "Patient List",
                      style: TextStyle(color: Colors.black, fontSize: 18),

                    ),
                  ],
                ),
              ),
              onTap: () {
              },
            ),
          ],),
        ),
      ),
    );
  }
}
