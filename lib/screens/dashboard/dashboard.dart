import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:school_app/screens/attendance/attendance_page.dart';
import 'package:school_app/screens/exams/examlist.dart';
import 'package:school_app/screens/notice_screen/notice_page.dart';
import 'package:school_app/screens/subjects/subjects_page.dart';
import 'package:school_app/utils/fade_animation.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.fill),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                      child: FadeAnimation(
                        1,
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/light-1.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      width: 80,
                      height: 150,
                      child: FadeAnimation(
                          1.3,
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/light-2.png'))),
                          )),
                    ),
                    Positioned(
                      right: 40,
                      top: 40,
                      width: 80,
                      height: 150,
                      child: FadeAnimation(
                          1.5,
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/clock.png'))),
                          )),
                    ),
                    Positioned(
                      child: FadeAnimation(
                          1.6,
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Center(
                              child: Text(
                                "Dashboard",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    SubjectsScreen(),
                              ),
                            );
                          },
                          child: DashboardTile(
                            timing: 1.8,
                            assetPath: 'assets/images/subjects.png',
                            cardTitle: 'Subjects',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    AttendancePage(),
                              ),
                            );
                          },
                          child: DashboardTile(
                            timing: 2.0,
                            assetPath: 'assets/images/attendance.png',
                            cardTitle: 'Attendance',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    NoticesScreen(),
                              ),
                            );
                          },
                          child: DashboardTile(
                            timing: 2.0,
                            assetPath: 'assets/images/attendance.png',
                            cardTitle: 'Notices',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    ExamListPage(),
                              ),
                            );
                          },
                          child: DashboardTile(
                            timing: 2.0,
                            assetPath: 'assets/images/attendance.png',
                            cardTitle: 'Results',
                          ),
                        ),
                        DashboardTile(
                          timing: 2.2,
                          assetPath: 'assets/images/attendance.png',
                          cardTitle: 'Reports',
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardTile extends StatelessWidget {
  final double timing;
  final String assetPath;
  final String cardTitle;

  const DashboardTile({
    super.key,
    required this.timing,
    required this.assetPath,
    required this.cardTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FadeAnimation(
        timing,
        Container(
          width: MediaQuery.of(context).size.width / 4,
          height: MediaQuery.of(context).size.width / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(108, 113, 211, 1),
                Color.fromRGBO(87, 93, 206, 0.6),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                assetPath,
                width: MediaQuery.of(context).size.width / 3.7,
                height: MediaQuery.of(context).size.width / 3.7,
              ),
              Text(
                cardTitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
