import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Models/models.dart';

class BankCardView extends StatefulWidget {  
  BankCardView({Key key}) : super(key: key);

  @override
  _BankCardViewState createState() => _BankCardViewState();
}

class _BankCardViewState extends State<BankCardView> {
  TextStyle userNameStyle = TextStyle(color: Colors.white, fontSize: 20);
  TextStyle cardNameStyle = TextStyle(color: Colors.white, fontSize: 12);
  TextStyle accountNameStyle = TextStyle(color: Colors.white, fontSize: 12);
  TextStyle sumNameStyle = TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold);
  CardModel cardModel = new CardModel();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/card-design-visa-img.png"),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Text(cardModel.userName, style: userNameStyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Text(cardModel.bankName, style: cardNameStyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text(cardModel.cardNumberLeft, style: accountNameStyle),
                          ),
                          for (int i = 0; i < 4; i++)
                            Icon(Icons.fiber_manual_record, color: Colors.white, size: 8),
                          Text('   '),
                          for (int i = 0; i < 4; i++)
                            Icon(Icons.fiber_manual_record, color: Colors.white, size: 8),
                          Text('   '),
                          Text(cardModel.cardNumberRight, style: accountNameStyle),
                        ],
                      ),
                    ),
                    Text('\$'+cardModel.sum, style: sumNameStyle),
                  ]))
        ],
      ),
    );
  }
}
