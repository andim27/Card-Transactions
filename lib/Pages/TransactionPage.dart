import 'package:flutter/material.dart';
import '../Constants/app_colors.dart';
import '../Widgets/bank_card.dart';
import '../Widgets/transaction_items.dart';

class TransactionPage extends StatefulWidget {
  TransactionPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  int _counter = 0;
 
  
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white)
        ),
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
              children: [
               
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    //shape: BoxShape.rectangle,
                    borderRadius:  BorderRadius.only(
                              topLeft: Radius.circular(35.0),
                              topRight: Radius.circular(35.0)
                    )
                  )
                ),
                Positioned(child: new TransactionItems(),top: 250),
                Positioned(child: Stack(children: <Widget>[
                                        Positioned(child: new BankCard(backgroundColor: AppColors.cardBackGround_3,cardWidth:0.7),top: 0,left: 40),
                                        Positioned(child: new BankCard(backgroundColor: AppColors.cardBackGround_2,cardWidth:0.8),top: -10, left: 20),
                                        Positioned(child: new BankCard(backgroundColor: AppColors.cardBackGround_1,cardWidth:0.9),top: -20),
                ]))
                 
                ],
            )
        
   
      ),
      
    );
  }
}
