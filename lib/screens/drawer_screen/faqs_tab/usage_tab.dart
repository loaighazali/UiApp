import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsageTab extends StatefulWidget {
  const UsageTab({Key? key}) : super(key: key);

  @override
  State<UsageTab> createState() => _UsageTabState();
}

class _UsageTabState extends State<UsageTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
     return ListTile(
        title: Text('Usage Qustion ${index+1} '),
        subtitle: Text('Answer'),
        leading: Icon(Icons.question_answer),
      );
    },
    );
  }
}
