import 'package:flutter/material.dart';

class CourseTitelPage extends StatefulWidget {
  String courseTitel;
  CourseTitelPage({super.key, required this.courseTitel});

  @override
  State<CourseTitelPage> createState() => _CourseTitelPageState();
}

class _CourseTitelPageState extends State<CourseTitelPage> {
  // topic name list
  List TopicName = [
    "Dart Basics",
    "Setup Development Environment",
    "Widgets",
    "Static User Interface",
    "Dynamic User Interface",
    "All Flutter Widgets",
    "Animation",
    "Dart Advance",
    "Storage",
    "Version Control",
    "Working with APIs",
    "Firebase",
    "3rd Party libararies",
    "Behavior Components",
    "State managment",
    "Architecture Patterns",
    "Package manager",
    "Qulity Assurance",
    "Deployment",
    "Revision",
    "Practice Project",
    "Exam"
  ];

  List TopicImage = [
    "assets/Dart-Tutorial.png",
    "assets/envirment.png",
    "assets/widgets1.jpg",
    "assets/statick.jpg",
    "assets/dynamic.jpeg",
    "assets/widget.jpg",
    "assets/Animation.gif",
    "assets/dart_advance.jpg",
    "assets/storage.jpg",
    "assets/version.png",
    "assets/APIs.png",
    "assets/firebase.png",
    "assets/library.png",
    "assets/behavior.gif",
    "assets/state.jpeg",
    "assets/arcitecture.jpeg",
    "assets/package.png",
    "assets/qulity.png",
    "assets/deployment.png",
    "assets/Revison.jpg",
    "assets/project.jpg",
    "assets/Exam.jpg",
  ];

  List Topicdays = [
    "Learn Dart In 2 week",
    "Day 1",
    "Day 2,3,4",
    "Day 5,6",
    "Day 7,8",
    "Day 9,10,11",
    "Day 12,13,14,",
    "Day 15,16,17,18,19,",
    "Day 20,21,22,23",
    "Day 24,25,26",
    "Day 27,28,29,30,31",
    "Day 32,33,34,35,36",
    "Day 37,38,39",
    "Day 40,41",
    "Day 42,43,44,45,46,47,48",
    "Day 49",
    "Day 50",
    "Day 51,52",
    "Day 53,54",
    "Day 55,56",
    "Day 57,58,59",
    "Day 60",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn ${widget.courseTitel} in 60 days"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                  child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Flutter",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    "The Flutter tutorials teach you how to use the Flutter framework to build mobile applications for iOS and Android.",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.4),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Choose from the following: 👇",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                          height: 2,
                          letterSpacing: 0.4),
                    ),
                  ),
                ],
              )),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio:
                          (MediaQuery.of(context).size.height - 0 - 10) /
                              (2.4 * 240)),
                  itemCount: TopicName.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                        child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 192, 186, 219)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 3,
                            ),
                            child: Center(
                                child: Text(
                              Topicdays[index],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 8, 49, 70),
                              ),
                            )),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                TopicImage[index],
                                height:
                                    MediaQuery.of(context).size.height / 4.5,
                                width: MediaQuery.of(context).size.width / 0.7,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 1,
                          ),
                          Text(
                            TopicName[index],
                            style: const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.favorite_outline),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: const Text("Start Now"))
                            ],
                          )
                        ],
                      ),
                    ));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
