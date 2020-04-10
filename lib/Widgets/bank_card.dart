import 'package:flutter/material.dart';
import '../Constants/app_colors.dart';
import '../Constants/app_colors.dart';
import '../Constants/app_colors.dart';

class BankCard extends StatefulWidget {
  final Color backgroundColor;
  final double cardWidth;
  BankCard({Key key, this.backgroundColor,this.cardWidth}) : super(key: key);
  @override
  _BankCardState createState() => _BankCardState();
}

class _BankCardState extends State<BankCard> {
  @override
  initState(){
    super.initState();
    print(widget.backgroundColor);
  }
  @override
  Widget build(BuildContext context) {
    return Center(child:Container(     
       height: 200,
       width: MediaQuery.of(context).size.width * widget.cardWidth,
       margin: EdgeInsets.all(20),                    
       child: Card(
              color: widget.backgroundColor,
              elevation: 8.0,
              //margin: EdgeInsets.all(30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
    )  
    );
  }
}