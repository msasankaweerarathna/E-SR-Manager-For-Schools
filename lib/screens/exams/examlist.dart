import 'package:flutter/material.dart';
import 'package:school_app/utils/fade_animation.dart';

// Exam model class
class Exam {
  final String title;
  final String description;
  final DateTime dueDate;

  Exam({required this.title, required this.description, required this.dueDate});
}

// List of exams
final List<Exam> examList = [
  Exam(
      title: 'Math Test',
      description: 'Basic math concepts',
      dueDate: DateTime(2023, 6, 1)),
  Exam(
      title: 'English Exam',
      description: 'Reading, writing, and grammar',
      dueDate: DateTime(2023, 6, 15)),
  Exam(
      title: 'Science Quiz',
      description: 'Biology, chemistry, and physics',
      dueDate: DateTime(2023, 7, 1)),
  Exam(
      title: 'History Exam',
      description: 'World history and geography',
      dueDate: DateTime(2023, 7, 15)),
];

// Exam list page
class ExamListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                                image:
                                    AssetImage('assets/images/light-2.png'))),
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
                                image: AssetImage('assets/images/clock.png'))),
                      )),
                ),
                Positioned(
                  child: FadeAnimation(
                      1.6,
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Center(
                          child: Text(
                            "Exams & Tests",
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
          ListView.builder(
            shrinkWrap: true,
            itemCount: examList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(examList[index].title),
                subtitle: Text('Date: ${examList[index].dueDate}'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Navigate to the selected exam page
                },
              );
            },
          )
        ],
      ),
    );
  }
}
