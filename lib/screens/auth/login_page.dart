import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:student_app/screens/dashboard/dashboard_home.dart';
import 'package:student_app/utils/color_constants.dart';
import 'package:student_app/utils/size_config.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var size = SizeConfig();
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              left: size.getPropotionateWidth(30),
              top: size.getPropotionateHeight(100),
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: kGradientCommon,
                ),
              ),
            ),
            Positioned(
              right: size.getPropotionateWidth(30),
              top: size.getPropotionateHeight(50),
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: kGradientCommon,
                ),
              ),
            ),
            Positioned(
              // left: MediaQuery.of(context).size.width,
              left: size.getPropotionateHeight(-600),
              child: Container(
                width: (MediaQuery.of(context).size.height * 4),
                height: (MediaQuery.of(context).size.height * 4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 3,
              top: size.getPropotionateHeight(100),
              child: Container(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.width / 3,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF2E1A68),
                ),
                child: Text(
                  'Logo',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Positioned(
              right: 30,
              bottom: 0,
              child: Container(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height / 2),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(4),
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Username',
                            hintText: 'Username',
                          ),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(4),
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Password',
                          ),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const DashboardHomePage(),
                              ),
                            );
                          },
                          child: Text('Login'),
                        ),
                      ),
                      SizedBox(
                        height: 160,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
