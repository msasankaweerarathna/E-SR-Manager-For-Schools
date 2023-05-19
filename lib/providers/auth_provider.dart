import 'package:flutter/material.dart';
import 'package:school_app/screens/dashboard/dashboard.dart';
import 'dart:developer' as dev;

import 'package:school_app/services/custom_http.dart';
import 'package:school_app/services/url_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  TextEditingController userIDController = TextEditingController();
  TextEditingController get getuserIDController => userIDController;

  TextEditingController passwordController = TextEditingController();
  TextEditingController get getpasswordController => passwordController;

  bool isLogginIn = false;
  bool get getisLogginIn => isLogginIn;
  setisLogginIn(val) {
    isLogginIn = val;
    notifyListeners();
  }

  bool isPrevLogged = false;
  bool get getisPrevLogged => isPrevLogged;
  setisPrevLogged(val) {
    isPrevLogged = val;
    notifyListeners();
  }

  checkSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Check if a value is present in shared preferences
    bool hasValue = prefs.containsKey('userid');

    dev.log(hasValue.toString());

    setisPrevLogged(hasValue);
  }

  Future<void> loginUser(context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      setisLogginIn(true);
      final response = await CustomHttp.getDio().post(
        kuserLogin,
        data: {
          "studentid": userIDController.text,
          "password": passwordController.text,
        },
      );
      dev.log(response.data.toString());

      if (response.data['error'] == false) {
        prefs.setString('userid', userIDController.text);
        prefs.setString('password', passwordController.text);
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const DashboardPage(),
          ),
        );
      }
    } catch (e) {
      // log(e.toString());
    } finally {
      setisLogginIn(false);
    }
  }

  Future<void> loginUserBiometric(context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? userid = prefs.getString('userid');
    String? password = prefs.getString('password');

    try {
      setisLogginIn(true);
      final response = await CustomHttp.getDio().post(
        kuserLogin,
        data: {
          "studentid": userIDController.text,
          "password": passwordController.text,
        },
      );
      dev.log(response.data.toString());

      if (response.data['error'] == false) {
        prefs.setString('userid', userid!);
        prefs.setString('password', password!);
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const DashboardPage(),
          ),
        );
      }
    } catch (e) {
      // log(e.toString());
    } finally {
      setisLogginIn(false);
    }
  }
}
