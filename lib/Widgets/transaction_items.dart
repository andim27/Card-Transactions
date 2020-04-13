import 'package:flutter/material.dart';
import '../Constants/app_colors.dart';

class TransactionItems extends StatefulWidget {
  TransactionItems({Key key}) : super(key: key);

  @override
  _TransactionItemsState createState() => _TransactionItemsState();
}

class _TransactionItemsState extends State<TransactionItems> {
  @override
  Widget build(BuildContext context) {
    return Center(child:Container(
       margin: EdgeInsets.all(10),
       child: Text('Transaction Items'),
    ));
  }
}