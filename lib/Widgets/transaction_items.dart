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
    return Container(
       child: Text('Transaction Items'),
    );
  }
}