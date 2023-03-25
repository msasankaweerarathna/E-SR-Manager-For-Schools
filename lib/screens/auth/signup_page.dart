import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:student_app/utils/color_constants.dart';
import 'package:student_app/utils/size_config.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              right: size.getPropotionateWidth(30),
              top: size.getPropotionateHeight(100),
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.width / 4,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: kGradientCommon,
                ),
              ),
            ),
            Positioned(
              left: size.getPropotionateWidth(30),
              top: size.getPropotionateHeight(50),
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.width / 4,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: kGradientCommon,
                ),
              ),
            ),
            Positioned(
              // left: MediaQuery.of(context).size.width,
              right: size.getPropotionateHeight(-600),
              child: Container(
                width: (MediaQuery.of(context).size.height * 4),
                height: (MediaQuery.of(context).size.height * 4),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 15, 5, 46),
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
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(9, 3, 26, 1),
                ),
                child: const Text(
                  'Logo',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Positioned(
              left: 30,
              bottom: 0,
              child: Container(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height / 1.5),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text(
                        'Register',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(4),
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Username',
                            hintText: 'Username',
                          ),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(4),
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Full Name',
                            hintText: 'Full Name',
                          ),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(4),
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Studet ID',
                            hintText: 'Studet ID',
                          ),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(4),
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Student ID',
                            hintText: 'Student ID',
                          ),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(4),
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: DropdownButton<String>(
                          value: 'Male',
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              // dropdownValue = value!;
                            });
                          },
                          items: ['Male', 'Female']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(4),
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            hintText: 'Email',
                          ),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(4),
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            hintText: 'Password',
                          ),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(4),
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Re-Password',
                            hintText: 'Re-Password',
                          ),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Login'),
                        ),
                      ),
                      const SizedBox(
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
