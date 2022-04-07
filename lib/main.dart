import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Widget popularCourse = Container(
  padding: const EdgeInsets.all(20.0),
  child: Row(children: const [
    Text(
      'Popular Courses :',
      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24.0),
    )
  ]),
);

Widget continueLearning = Container(
  padding: const EdgeInsets.all(20.0),
  child: Row(children: const [
    Text(
      'Continue Learning :',
      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24.0),
    )
  ]),
);

Column _buildIconTop(IconData iconData, String label) {
  return Column(
    children: [
      Icon(
        iconData,
        size: 90.0,
      ),
      Container(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(label),
      )
    ],
  );
}

Widget popularCourseIcons = Container(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _buildIconTop(Icons.calendar_month_outlined, 'Science'),
      _buildIconTop(Icons.coffee, 'Cooking'),
      _buildIconTop(Icons.architecture, 'Math'),
      _buildIconTop(Icons.bike_scooter_outlined, 'Biology'),
      _buildIconTop(Icons.design_services_outlined, 'Design')
    ],
  ),
);

Container _buildLastSeenCourseIcons(
    IconData iconData, String courseName, String time) {
  return Container(
    color: Color.fromARGB(255, 194, 139, 180),
    padding: EdgeInsets.all(20.0),
    margin: EdgeInsets.only(bottom: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(iconData),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(courseName), Text(time)],
        ),
        Icon(Icons.play_circle_outline)
      ],
    ),
  );
}

Widget lastSeenCourse = Container(
  padding: EdgeInsets.all(20.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      _buildLastSeenCourseIcons(
          Icons.copy, 'Basics of Designing', '1 Hour 25 Min'),
      _buildLastSeenCourseIcons(
          Icons.save, 'Human Respiratory System', '4 Hour 10 Min'),
      _buildLastSeenCourseIcons(
          Icons.book, 'Integration & Differentiation', '2 Hour 37 Min')
    ],
  ),
);

Container _buildContinueIcons(
    IconData iconData, String label, String chapter, String time) {
  return Container(
    padding: EdgeInsets.all(20.0),
    margin: EdgeInsets.only(right: 50.0),
    color: const Color.fromARGB(255, 119, 221, 119),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(iconData, size: 60.0),
        Container(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
          ),
        ),
        Text(
          chapter,
          style: TextStyle(fontSize: 14.0),
        ),
        Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Row(
              children: [
                const Icon(Icons.av_timer_sharp),
                Container(
                    padding: EdgeInsets.only(left: 10.0), child: Text(time))
              ],
            ))
      ],
    ),
  );
}

Widget continueLearningIcons = Container(
  padding: EdgeInsets.all(20.0),
  child: Row(children: [
    _buildContinueIcons(
        Icons.calendar_month_outlined, 'Science', 'Chapter 4', '27 mins'),
    _buildContinueIcons(
        Icons.design_services_outlined, 'Design', 'Chapter 5', '30 mins'),
    _buildContinueIcons(
        Icons.bike_scooter_outlined, 'Biology', 'Chapter 1', '25 mins'),
    _buildContinueIcons(Icons.coffee, 'Cooking', 'Chapter 3', '18 mins')
  ]),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test 1 - C14190014',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test 1 - C14190014'),
        ),
        body: ListView(children: [
          popularCourse,
          popularCourseIcons,
          continueLearning,
          continueLearningIcons,
          Container(
            padding: EdgeInsets.all(20.0),
            child: const Text(
              'Last Seen Course : ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
          ),
          lastSeenCourse
        ]),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    size: 40,
                  ),
                  Text('Home')
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.menu_book,
                    size: 40,
                  ),
                  Text('Explore')
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.chat,
                    size: 40,
                  ),
                  Text('Chat')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
