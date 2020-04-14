import 'package:flutter/material.dart';
import '../Constants/app_colors.dart';
import 'transaction_item_icon.dart';

class TransactionItemView extends StatefulWidget {
  TransactionItemView({Key key}) : super(key: key);

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
    return Container(
       child: Column(
             children: <Widget>[
               Container(
                height: 60,
                decoration: BoxDecoration(border:Border(bottom: BorderSide(color:Colors.grey[200],width:2))),
                child: ListTile(
                  leading: TransactionItemIcon(),
                  title: Text('One-line with both widgets', style: itemTitleStyle),
                  subtitle: Text('Subtext', style: subitemTitleStyle),
                  trailing: Text('\$280.00',style: sumPlusTitleStyle),
                ),
              )
             ],
           ),
    );
  }
}