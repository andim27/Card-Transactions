import 'package:flutter/material.dart';
import '../Constants/app_colors.dart';
import 'transaction_item_icon.dart';

class TransactionItemView extends StatefulWidget {
  int dayIndex;
  int itemIndex;
  List items;
  TransactionItemView({Key key, this.dayIndex, this.itemIndex, this.items})
      : super(key: key);

  @override
  _TransactionItemViewState createState() => _TransactionItemViewState();
}

class _TransactionItemViewState extends State<TransactionItemView> {
  TextStyle itemTitleStyle = TextStyle(color: Colors.black, fontSize: 12);
  TextStyle subitemTitleStyle = TextStyle(color: Colors.grey, fontSize: 10);
  TextStyle sumPlusTitleStyle = TextStyle(color: AppColors.sumPlusColor, fontSize: 12, fontWeight: FontWeight.bold);
  TextStyle sumMinusTitleStyle = TextStyle(color: AppColors.sumMinusColor, fontSize: 14, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    print("ItemsView $widget.items");
    String description = widget.items[widget.itemIndex].description;
    String status = widget.items[widget.itemIndex].status;
    String sumStr = "\$";
    bool isSumMinus = false;
    if (widget.items[widget.itemIndex].sum > 0) {
      sumStr = '+ ' + sumStr + widget.items[widget.itemIndex].sum.toString();
    } else {
      isSumMinus = true;
      sumStr = '- ' + sumStr + widget.items[widget.itemIndex].sum.abs().toString();
    }
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 55,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.grey[200], width: 2))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    flex: 10,
                    child: TransactionItemIcon(
                        dayIndex: widget.dayIndex,
                        itemIndex: widget.itemIndex)),
                Expanded(
                  flex: 60,
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(description, style: itemTitleStyle),
                        Spacer(),
                        Text(status, style: subitemTitleStyle)
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 20,
                    child: Text(sumStr,
                        style: (isSumMinus)
                            ? sumMinusTitleStyle
                            : sumPlusTitleStyle))
              ],
            ),
          )
        ],
      ),
    );
  }
}
