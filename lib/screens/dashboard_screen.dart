import 'package:flutter/material.dart';
import 'package:wha_hifi_app/components/dashboard_drawer.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DashboardDrawer(),
      body: Container(
        child: Center(child: Text("hello world"),),
      ),
    );
  }
}
