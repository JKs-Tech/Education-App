import 'package:flutter/material.dart';

class CourseSubTopic extends StatefulWidget {
  String topicName;
  CourseSubTopic({super.key, required this.topicName});

  @override
  State<CourseSubTopic> createState() => _CourseSubTopicState();
}

class _CourseSubTopicState extends State<CourseSubTopic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.topicName),
        centerTitle: true,
      ),
    );
  }
}
