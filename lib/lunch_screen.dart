import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LunchScreen extends StatefulWidget {
  const LunchScreen({Key? key}) : super(key: key);

  @override
  State<LunchScreen> createState() => _LunchScreenState();


}

class _LunchScreenState extends State<LunchScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   Future.delayed(const Duration(seconds: 3) ,
         () => Navigator.pushReplacementNamed(context, '/out_bording_content'),
   );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(
            begin: AlignmentDirectional.topStart,
            end:   AlignmentDirectional.bottomEnd,
            colors: [
             Colors.red.shade900,
             Colors.red.shade200,
            ]
          ),
        ),
        child:const Center(
          child: Text(
            'Elancer Ui App',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
