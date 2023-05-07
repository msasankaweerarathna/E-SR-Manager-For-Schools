import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:school_app/utils/fade_animation.dart';
import 'package:table_calendar/table_calendar.dart';

class AttendancePage extends StatefulWidget {
  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  // CalendarController _calendarController = CalendarController();

  List<DateTime> _attendance = [
    DateTime(2023, 5, 1),
    DateTime(2023, 5, 2),
    DateTime(2023, 5, 3),
    DateTime(2023, 5, 10),
    DateTime(2023, 5, 12),
    DateTime(2023, 5, 15),
    // Add more dates as needed
  ];

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
                                "Attendance",
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
                    FadeAnimation(
                      2.5,
                      TableCalendar(
                        // calendarController: _calendarController,
                        // initialSelectedDay:
                        startingDayOfWeek: StartingDayOfWeek.monday,
                        availableGestures: AvailableGestures.none,
                        calendarStyle: CalendarStyle(
                          // selectedColor: Colors.blue,
                          todayDecoration: BoxDecoration(
                            color: _attendance.contains(DateTime(
                                    DateTime.now().year,
                                    DateTime.now().month,
                                    DateTime.now().day))
                                ? Colors.green
                                : Colors.purple,
                            shape: BoxShape.circle,
                          ),

                          // todayColor: Colors.transparent,
                          // markersColor: Colors.green,
                          outsideDaysVisible: false,
                        ),

                        calendarBuilders: CalendarBuilders(
                          defaultBuilder: (context, date, _) {
                            // log(date.toString());

                            return Container(
                              margin: const EdgeInsets.all(4.0),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: _attendance.contains(DateTime(
                                        date.year, date.month, date.day))
                                    ? Colors.green
                                    : Colors.blue,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                '${date.day}',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            );
                          },
                        ),
                        headerStyle: HeaderStyle(
                          // centerHeaderTitle: true,
                          formatButtonVisible: false,
                          titleTextStyle: TextStyle(fontSize: 18),
                        ),
                        onDaySelected: (date, events) {
                          // setState(() {
                          //   if (_attendance.containsKey(date)) {
                          //     _attendance[date] = !_attendance[date]!;
                          //   } else {
                          //     _attendance[date] = true;
                          //   }
                          // });
                        },
                        firstDay: DateTime(DateTime.now().year),
                        focusedDay: DateTime.now(),
                        lastDay: DateTime(2024),
                      ),
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
