import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OutBordingScreen extends StatelessWidget {
  const OutBordingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 60,
          backgroundColor: Colors.blue,
        ),

        SizedBox(height: 20,),

        Text(
          'This is main title',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 20,),

        Text(
          'fsghjkghfklbnvj lksfghiglermgsfng lkghofgl;lnghg idguhrgi lksfghiglermgsfng lkghofgl;lnghg idguhrgi',
          style: TextStyle(
          ),
          textAlign:TextAlign.center ,
        ),
      ],
    );
  }
}
