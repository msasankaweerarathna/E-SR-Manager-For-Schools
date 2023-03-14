import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StudentInformation extends StatefulWidget {
  const StudentInformation({super.key});

  @override
  State<StudentInformation> createState() => _StudentInformationState();
}

class _StudentInformationState extends State<StudentInformation> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text('Student Name'),
          SizedBox(
            height: 20,
          ),
          Text('Student Register Date'),
          SizedBox(
            height: 20,
          ),
          Text('Student Birthday'),
          SizedBox(
            height: 20,
          ),
          Text('Other Information'),
          SizedBox(
            height: 20,
          ),
          Text('Other Information'),
          SizedBox(
            height: 20,
          ),
          Text('Other Information'),
          SizedBox(
            height: 20,
          ),
          Text('Other Information'),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
