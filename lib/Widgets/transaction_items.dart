import 'package:app/Widgets/transaction_item_icon.dart';
import 'package:flutter/material.dart';
import '../Constants/app_colors.dart';
import 'transaction_item_view.dart';
import '../Models/models.dart';

class TransactionItems extends StatefulWidget {
  TransactionItems({Key key}) : super(key: key);

  @override
  _TransactionItemsState createState() => _TransactionItemsState();
}

class _TransactionItemsState extends State<TransactionItems> {
  TextStyle dayTitleStyle = TextStyle(color: Colors.grey,fontSize:10);
  int _todayCnt = 1;
  int _yestadayCnt = 4;
  List<TransactionModel> _itemsToday;
  List<TransactionModel> _itemsYesteday; 

  @override
  Widget build(BuildContext context) {
     
    var trItems = new TransactionItemsModel();
    this._itemsToday    = trItems.takeTodayItems();
    this._itemsYesteday = trItems.takeYestadayItems();

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20,20,0),
      child: Center(              
         child: Column(                         
           crossAxisAlignment: CrossAxisAlignment.start,
           children:  <Widget>[
             Text("Today", style: dayTitleStyle),
             for (int i = 0; i < _todayCnt; i++) TransactionItemView(dayIndex:0, itemIndex:i, items: this._itemsToday),
             Text('Yestaday', style: dayTitleStyle),
             for (int i = 0; i < _yestadayCnt; i++) TransactionItemView(dayIndex:1, itemIndex:i, items: this._itemsYesteday),
           ]
           )
         
      ),
    );
  }
}