import 'package:flutter/material.dart';
class TransactionItemIcon extends StatefulWidget {
  int dayIndex;
  int itemIndex;
  TransactionItemIcon({Key key, this.dayIndex, this.itemIndex}) : super(key: key);

  @override
  _TransactionItemIconState createState() => _TransactionItemIconState();
}

class _TransactionItemIconState extends State<TransactionItemIcon> {

  @override
  Widget build(BuildContext context) {
    Color itemIconColor;
    switch (widget.itemIndex) {
      case 0:
        itemIconColor = Colors.red;
        if (widget.dayIndex == 0) itemIconColor = Colors.deepPurple;
      break;
      case 1:
        itemIconColor = Colors.blue; 
      break;
      case 2:
        itemIconColor = Colors.orange;
      break;
      case 3:
        itemIconColor = Colors.greenAccent;
      break;
    }
    return Container(
            child: Center(child:Image(image: AssetImage('assets/images/icon-drop.png'))),
            width: 30,
            height: 30,
            decoration: BoxDecoration(color: itemIconColor,borderRadius: BorderRadius.circular(8))              
           );
  }
}