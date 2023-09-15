import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticalScreen extends StatefulWidget {
  const ArticalScreen({Key? key}) : super(key: key);

  @override
  State<ArticalScreen> createState() => _ArticalScreenState();
}

class _ArticalScreenState extends State<ArticalScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
     itemCount: 10,
      shrinkWrap: true,
      padding: EdgeInsetsDirectional.all(20),

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
        crossAxisSpacing: 20  ,
        mainAxisSpacing: 20 ,
        childAspectRatio: 114/125,),

      itemBuilder:(context, index) {
        return Container(color: Colors.blue,);
      },
    );
  }
}
