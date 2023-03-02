import 'package:flutter/material.dart';

class WhishList extends StatefulWidget {
  const WhishList({super.key});

  @override
  State<WhishList> createState() => _WhishListState();
}

class _WhishListState extends State<WhishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Wishlist Page"),
      ),
    );
  }
}
