import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MaterialApp(home: PieChartSample()));
}

class PieChartSample extends StatelessWidget {
  final List<PieChartSectionData> _sections = [
    PieChartSectionData(
      title: 'Lenovo',
      value: 25,
      color: Colors.blue,
      radius: 80,
    ),
    PieChartSectionData(
      title: 'Asus',
      value: 38,
      color: Colors.green,
      radius: 80,
    ),
    PieChartSectionData(
      title: 'Dell',
      value: 48,
      color: Colors.orange,
      radius: 80,
    ),
    PieChartSectionData(
      title: 'HP',
      value: 50,
      color: Colors.red,
      radius: 80,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.pie_chart, color: Colors.white),
        title: Text("Flutter Experiment No 5"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgimg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: PieChart(
              PieChartData(
                sections: _sections,
                centerSpaceRadius: 40,
                sectionsSpace: 5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
