import 'package:all_widgets/course_details.dart/course_titel.dart';
import 'package:all_widgets/course_details.dart/no_course.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
//

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// creating category data in List
  List categoryName = [
    "Category",
    "Classes",
    "Books",
    "Free Course",
    "Projects",
    "Job"
  ];

  List<Color> colorName = [
    const Color.fromARGB(255, 12, 254, 222),
    const Color.fromARGB(255, 227, 28, 28),
    const Color.fromARGB(255, 255, 9, 136),
    const Color.fromARGB(255, 10, 117, 248),
    const Color.fromARGB(255, 246, 238, 2),
    const Color.fromARGB(255, 189, 227, 38),
  ];

  List<Icon> catIcon = [
    const Icon(
      Icons.category,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.video_library,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.book_online,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.school,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.list_alt,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.badge,
      color: Colors.white,
      size: 30,
    ),
  ];

  List images = [
    "assets/html.png",
    "assets/css.png",
    "assets/flutter.png",
    "assets/dart.png",
    "assets/js.png",
    "assets/java.png",
    "assets/c++.png",
    "assets/react.png",
    "assets/paython.png"
  ];

  List imagesName = [
    "HTML",
    "CSS",
    "FLUTTER",
    "DART",
    "JAVA SCRIPT",
    "JAVA",
    "C++",
    "REACT",
    'PAYTHON'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 171,
        flexibleSpace: Column(
          children: [
            SizedBox(
              height: 20,
              child: Container(
                color: Color(0xff674aef),
              ),
            ),
            Container(
              height: 175,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xff674aef),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.white,
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 28,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Hi, Programmer",
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11)),
                      child: const Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here your doubte...",
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, childAspectRatio: 1.1),
                      itemCount: categoryName.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: colorName[index],
                                  shape: BoxShape.circle),
                              child: Center(
                                child: catIcon[index],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              categoryName[index],
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Coursses",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  childAspectRatio:
                                      (MediaQuery.of(context).size.height -
                                              50 -
                                              25) /
                                          (4 * 240)),
                          itemCount: images.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return InkWell(
                                child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFFF5F3FF)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(6),
                                    child: Image.asset(
                                      images[index],
                                      height: 100,
                                      width: 100,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    imagesName[index],
                                    style: const TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        if (imagesName[index] ==
                                            imagesName[2]) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    CourseTitelPage(
                                                        courseTitel:
                                                            imagesName[index]),
                                              ));
                                        } else {
                                          AwesomeDialog(
                                            context: context,
                                            dialogType: DialogType.info,
                                            animType: AnimType.scale,
                                            showCloseIcon: false,
                                            headerAnimationLoop: false,
                                            title: "Hi Programmer",
                                            desc:
                                                "Currently FLUTTER and DART tutorial is available in the app, we are working on the rest course",
                                            descTextStyle: const TextStyle(
                                                color: Colors.green,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                            btnOkOnPress: () {},
                                          ).show();
                                        }
                                      },
                                      child: const Text("Start Now"))
                                ],
                              ),
                            ));
                          }),
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
