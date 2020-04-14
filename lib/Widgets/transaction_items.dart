import 'package:flutter/material.dart';
import '../Constants/app_colors.dart';
import 'transaction_item_view.dart';

class TransactionItems extends StatefulWidget {
  TransactionItems({Key key}) : super(key: key);

  @override
  _TransactionItemsState createState() => _TransactionItemsState();
}

class _TransactionItemsState extends State<TransactionItems> {
  TextStyle dayTitleStyle = TextStyle(color: Colors.grey,fontSize:10);
  int _todayCnt = 1;
  int _yestadayCnt = 4;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20,20,0),
      child: Center(              
         child: Column(
                          
           crossAxisAlignment: CrossAxisAlignment.start,
           children:  <Widget>[
             Text("Today", style: dayTitleStyle),
             for (int i = 0; i < _todayCnt; i++) TransactionItemView(),
             Text('Yestaday', style: dayTitleStyle),
             for (int i = 0; i < _yestadayCnt; i++) TransactionItemView(),
           ]
           )
         
      ),
    );
  }
}