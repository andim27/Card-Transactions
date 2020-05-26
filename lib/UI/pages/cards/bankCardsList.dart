import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:msp_highway/constants/uiimages.dart';
import 'package:msp_highway/constants/uistrings.dart';
import 'package:msp_highway/constants/uithemes.dart';
import 'package:msp_highway/helpers/stringHelper.dart';
import 'bankCardsModels.dart';

  // -- Card List View --
  Widget cardsListView(BuildContext context) {
    final List<CardModel> _cardItems = [CardModel(cardName: CardType.visa,userName: UIStrings.text_user_name_stub), CardModel(cardName: CardType.blank)];
    final _cardViewWidth = MediaQuery.of(context).size.width * 0.7;
    return Container(
             padding: EdgeInsets.only(left:30, top: 24, bottom: 24),
             height: MediaQuery.of(context).size.height * 0.35,
              child: ListView.builder(
                       scrollDirection: Axis.horizontal,
                       itemCount: _cardItems.length, itemBuilder: (context, index) {
                         return Container(
                           width: _cardViewWidth,
                           child: cardView(_cardItems[index],index)
                         ) ;
                       }
              )
    );
  }

 

  // -- details views --
  Widget cardView(CardModel cardItem,int index) {
    return Card(
            color: (index > 0) ? Colors.white : UIThemes.accentColor,
            elevation: 5.0,            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: (index == 0) ? cardTexts(cardItem) : null,
      );
  }


  // -- Card dots --
  Widget cardDots(int cnt) {
    return Row(children: <Widget>[
      for (int i = 0; i < cnt; i++)
        Icon(Icons.fiber_manual_record, color: Colors.white, size: 8)
    ]);
  }

  //--- Card text ----
  Widget cardTexts(CardModel cardItem) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
            Image.asset(UIImages.visa,width: 48,height: 38),
            SizedBox(height:40),
            Row(children: <Widget>[
              cardDots(4),
              SizedBox(width:10),
              cardDots(4),
              SizedBox(width:10),
              cardDots(4),
              SizedBox(width:10),
              Text(cardItem.cardNumberRight, style: UIThemes.bankCardNumberTextStyle()),
            ]),
            SizedBox(height:10),
            Text(cardItem.userName, style: UIThemes.bankCardUserNameTextStyle())

        ],
      ),
    );
  }