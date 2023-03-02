import 'package:all_widgets/widgets/bottom_navigation_screens/community_post.dart';
import 'package:all_widgets/widgets/bottom_navigation_screens/home_page.dart';
import 'package:all_widgets/widgets/bottom_navigation_screens/profile_screen.dart';
import 'package:all_widgets/widgets/bottom_navigation_screens/wishlist.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_screens/search_screen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  List pages = [
    const HomePage(),
    const CommunityPost(),
    const WhishList(),
    const ProfilePage(),
    const SearchScreen()
  ];

  int currenIndex = 0;
  void onTap(int index) {
    currenIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currenIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: currenIndex,
          onTap: (index) {
            onTap(index);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: "Post"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorit"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ]),
    );
  }
}
