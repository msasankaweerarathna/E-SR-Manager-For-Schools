import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StudentProgress extends StatefulWidget {
  const StudentProgress({super.key});

  @override
  State<StudentProgress> createState() => _StudentProgressState();
}

class _StudentProgressState extends State<StudentProgress> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            // Chart title
            title: ChartTitle(text: 'Yearly marks chart'),
            // Enable legend
            legend: Legend(isVisible: true),
            // Enable tooltip
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <ChartSeries<DummyData, String>>[
              LineSeries<DummyData, String>(
                dataSource: data,
                xValueMapper: (DummyData valuation, _) => valuation.title,
                yValueMapper: (DummyData valuation, _) => valuation.value,
                name: 'English',
              ),
              LineSeries<DummyData, String>(
                dataSource: data2,
                xValueMapper: (DummyData valuation, _) => valuation.title,
                yValueMapper: (DummyData valuation, _) => valuation.value,
                name: 'Mathematics',
              ),
              LineSeries<DummyData, String>(
                dataSource: data3,
                xValueMapper: (DummyData valuation, _) => valuation.title,
                yValueMapper: (DummyData valuation, _) => valuation.value,
                name: 'Sinhala',
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('View Suggesstions'),
          )
        ],
      ),
    );
  }

  List<DummyData> data = [
    DummyData(value: 50, title: 'Term 1'),
    DummyData(value: 60, title: 'Term 2'),
    DummyData(value: 66, title: 'Term 3'),
  ];
  List<DummyData> data2 = [
    DummyData(value: 20, title: 'Term 1'),
    DummyData(value: 60, title: 'Term 2'),
    DummyData(value: 80, title: 'Term 3'),
  ];

  List<DummyData> data3 = [
    DummyData(value: 40, title: 'Term 1'),
    DummyData(value: 90, title: 'Term 2'),
    DummyData(value: 75, title: 'Term 3'),
  ];
}

class DummyData {
  String title;
  int value;

  DummyData({
    required this.value,
    required this.title,
  });
}
