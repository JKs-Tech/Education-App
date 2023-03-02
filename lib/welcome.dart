import 'package:all_widgets/widgets/bottom_navigation_screens/home_page.dart';
import 'package:all_widgets/widgets/buttom_navigation_bar.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.6,
                decoration: const BoxDecoration(color: Colors.white),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.6,
                decoration: const BoxDecoration(
                    color: Color(0xff674aef),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(70))),
                child: Center(
                  child: Image.asset(
                    "assets/splash.png",
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.666,
              decoration: const BoxDecoration(
                color: Color(0xff674aef),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.666,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(70))),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 60.0),
                    child: Text(
                      "Skills is Everything",
                      style: TextStyle(
                          fontSize: 25,
                          letterSpacing: 1,
                          wordSpacing: 2,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "IF YOU HAVE SKILL YOU WILL NEVER STARVE",
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff674aef),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const BottomNavigationBarWidget(),
                            ));
                      },
                      child: const SizedBox(
                        width: 160,
                        height: 50,
                        child: Center(
                          child: Text(
                            "Get Start",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
