import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OutBordingIndictor extends StatelessWidget {

  bool _selctd  ;


  OutBordingIndictor( this._selctd);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsetsDirectional.only(end: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:_selctd ? Colors.blue : Colors.grey  ,
      ),
    );
  }
}

class colorIndictor {}