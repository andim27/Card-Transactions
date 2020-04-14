import 'package:flutter/material.dart';
class TransactionItemIcon extends StatelessWidget {
  const TransactionItemIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            child: Center(child:Image(image: AssetImage('assets/images/icon-drop.png'))),
            width: 30,
            height: 30,
            decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(6))              
           );
  }
}