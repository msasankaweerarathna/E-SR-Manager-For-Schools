import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class StudentInformation extends StatefulWidget {
  const StudentInformation({super.key, Key?});

  @override
  State<StudentInformation> createState() => _StudentInformationState();
}

class _StudentInformationState extends State<StudentInformation> {
  late TextEditingController _nameController;
  late TextEditingController _registerDateController;
  late TextEditingController _birthdayController;
  late TextEditingController _otherInfo1Controller;
  late TextEditingController _otherInfo2Controller;
  late TextEditingController _otherInfo3Controller;
  late List<charts.Series> _chartData;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _registerDateController = TextEditingController();
    _birthdayController = TextEditingController();
    _otherInfo1Controller = TextEditingController();
    _otherInfo2Controller = TextEditingController();
    _otherInfo3Controller = TextEditingController();
    _chartData = [      charts.Series(        domainFn: (data, _) => data.label,        measureFn: (data, _) => data.value,        id: 'Grades',        data: [          _GradeData('A', 50),          _GradeData('B', 20),          _GradeData('C', 10),          _GradeData('D', 15),          _GradeData('F', 5),        ],
        labelAccessorFn: (data, _) => '${data.label}: ${data.value}%',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text('Student Information'),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: 'Name',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _registerDateController,
            decoration: InputDecoration(
              labelText: 'Register Date',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _birthdayController,
            decoration: InputDecoration(
              labelText: 'Birthday',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _otherInfo1Controller,
            decoration: InputDecoration(
              labelText: 'Other Information 1',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _otherInfo2Controller,
            decoration: InputDecoration(
              labelText: 'Other Information 2',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _otherInfo3Controller,
            decoration: InputDecoration(
              labelText: 'Other Information 3',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Grades Distribution'),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 300,
            child: charts.PieChart(
              _chartData,
              animate: true,
              animationDuration: Duration(milliseconds: 500),
              defaultRenderer: charts.ArcRendererConfig(
                arcWidth: 60,
                arcRendererDecorators: [
                  charts.ArcLabelDecorator(
                    labelPosition: charts.ArcLabelPosition.outside,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GradeData {
  final String label;
  final int value;

  _GradeData(this.label, this.value);
}
