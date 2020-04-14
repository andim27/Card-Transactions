import 'package:flutter/material.dart';
import '../Constants/app_colors.dart';
import 'transaction_item_icon.dart';

class TransactionItemView extends StatefulWidget {
  int dayIndex;
  int itemIndex;
  List items;
  TransactionItemView({Key key, this.dayIndex, this.itemIndex,this.items}) : super(key: key);

  @override
  _TransactionItemViewState createState() => _TransactionItemViewState();
}

class _TransactionItemViewState extends State<TransactionItemView> {
   TextStyle itemTitleStyle    = TextStyle(color: Colors.black,fontSize:12);
   TextStyle subitemTitleStyle = TextStyle(color: Colors.grey,fontSize:10);
   TextStyle sumPlusTitleStyle     = TextStyle(color: AppColors.sumPlusColor,fontSize:12,fontWeight: FontWeight.bold);
   TextStyle sumMinusTitleStyle    = TextStyle(color: AppColors.sumMinusColor,fontSize:12,fontWeight: FontWeight.bold);
   
  @override
  Widget build(BuildContext context) {
    print("ItemsView $widget.items");
    String description = widget.items[widget.itemIndex].description;
    String status      = widget.items[widget.itemIndex].status;
    String sumStr      = "\$";
    bool isSumMinus = false;
    if (widget.items[widget.itemIndex].sum > 0) {
        sumStr = sumStr + widget.items[widget.itemIndex].sum.toString();
    } else {
        isSumMinus = true;
        sumStr = "- "+sumStr + widget.items[widget.itemIndex].sum.abs().toString();
    }
    return Container(
       child: Column(
             children: <Widget>[
               Container(
                height: 60,
                decoration: BoxDecoration(border:Border(bottom: BorderSide(color:Colors.grey[200],width:2))),
                child: ListTile(
                  leading: TransactionItemIcon(dayIndex: widget.dayIndex, itemIndex: widget.itemIndex),
                  title: Text(description, style: itemTitleStyle),
                  subtitle: Text(status, style: subitemTitleStyle),
                  trailing: Text(sumStr,style: (isSumMinus)?sumMinusTitleStyle:sumPlusTitleStyle),
                ),
              )
             ],
           ),
    );
  }
}