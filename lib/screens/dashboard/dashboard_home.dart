import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:student_app/screens/dashboard/pages/student_attendance.dart';
import 'package:student_app/screens/dashboard/pages/student_information.dart';
import 'package:student_app/screens/dashboard/pages/student_progress.dart';

class DashboardHomePage extends StatefulWidget {
  const DashboardHomePage({super.key});

  @override
  State<DashboardHomePage> createState() => _DashboardHomePageState();
}

class _DashboardHomePageState extends State<DashboardHomePage> {
  List<Widget> _pages = [
    StudentProgress(),
    Container(),
    Container(),
    StudentInformation(),
    Container(),
    StudentAttendance(),
    Container(),
    Container(),
    Container(),
  ];
  int selectedPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0xFF2E1A68),
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: const Color(0xff764abc)),
              accountName: Text(
                "Manuja Manuja",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "manuja@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: Icon(
                Icons.person,
                size: 70,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedPage = 0;
                        });
                        Navigator.pop(context);
                      },
                      child: Text('Student Progress'),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedPage = 1;
                        });
                        Navigator.pop(context);
                      },
                      child: Text('Marks & Suggesstions'),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedPage = 2;
                        });
                        Navigator.pop(context);
                      },
                      child: Text('Reports'),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedPage = 3;
                        });
                        Navigator.pop(context);
                      },
                      child: Text('Student Info'),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedPage = 4;
                        });
                        Navigator.pop(context);
                      },
                      child: Text("Teacher's feedbacks"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedPage = 5;
                        });
                        Navigator.pop(context);
                      },
                      child: Text('Attendance'),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedPage = 6;
                        });
                        Navigator.pop(context);
                      },
                      child: Text('Contact'),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedPage = 7;
                        });
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Class schedules and Assignments',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedPage = 8;
                        });
                        Navigator.pop(context);
                      },
                      child: Text('Payement'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF2E1A68),
        // automaticallyImplyLeading: false,
        title: Text('App Name'),
        actions: [Icon(Icons.notifications_sharp)],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: _pages[selectedPage],
      ),
    );
  }
}
