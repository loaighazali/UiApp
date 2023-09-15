import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GeneralTab extends StatefulWidget {
  const GeneralTab({Key? key}) : super(key: key);

  @override
  State<GeneralTab> createState() => _GeneralTabState();
}

class _GeneralTabState extends State<GeneralTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('General Question ${index+1} '),
          subtitle: const Text('Answer'),
          leading:const  Icon(Icons.question_answer),
        );
      },
    );
  }
}
