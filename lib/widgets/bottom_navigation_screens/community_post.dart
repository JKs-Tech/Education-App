import 'package:flutter/material.dart';

class CommunityPost extends StatefulWidget {
  const CommunityPost({super.key});

  @override
  State<CommunityPost> createState() => _CommunityPostState();
}

class _CommunityPostState extends State<CommunityPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("post Page"),
      ),
    );
  }
}
