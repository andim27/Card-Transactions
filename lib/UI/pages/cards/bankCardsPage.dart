import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:msp_highway/constants/uiimages.dart';
import 'package:msp_highway/constants/uistrings.dart';
import 'package:msp_highway/constants/uithemes.dart';
import 'package:msp_highway/helpers/stringHelper.dart';
import 'package:msp_highway/ui/widgets/elements/appBarStyle.dart';
import 'bankCardsList.dart';



//-- Виджеты --
class BankCardsPage extends StatefulWidget {
  @override
  _BankCardsState createState() => _BankCardsState(  
  );
}

class _BankCardsState extends State<BankCardsPage> {
  static const paddingPageLeft = 30.0;
  static const paddingPageRight = 10.0;
  static const paddingFromButton = 100.0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: simpleAppBarWithBackClick(
                        capitalize(UIStrings.text_my_cards), () {Navigator.pop(context);}
                      ),
              body: makePage(context)
        );
  }

  Widget makePage(BuildContext context) {
    return Column(children: <Widget>[
            cardsListView(context),
            cardControlView(context),
    ]);
  }

  


 Widget cardControlView(BuildContext context) {
    return Container(
      child: Padding(
              padding: const EdgeInsets.only(left: paddingPageLeft, right: paddingPageRight, top: 0, bottom: 16),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Container(                    
                        child:Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                    IconButton(icon: Icon(Icons.remove), color: UIThemes.accentColor, onPressed:(){}),
                                    IconButton(icon: Icon(Icons.add), color: Colors.grey, onPressed:(){})
                        ]
                        )
                     
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(flex:80,child: cardMainTexts()),
                      Expanded(flex:20,child: Switch(value: true,  activeTrackColor: Colors.grey,activeColor: UIThemes.primaryColor, onChanged: (value) {})),
                    ]
                  ),
                  Divider(height: 1.0,thickness: 1.0,),
                  Row(
                    children: <Widget>[
                      Expanded(flex:80,child: cardAutoPayTexts()),
                      Expanded(flex:20,child: Switch(value: false, activeTrackColor: Colors.grey, activeColor: UIThemes.primaryColor, onChanged: (value) {})),
                    ]
                  ),
                  SizedBox(height:paddingFromButton),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, right: paddingPageRight, top: 0, bottom: 0),
                    child: cardDelButton()
                  ),
                ],
              )
          ),
    );
  }

  //-- Card Main Texts --
  Widget cardMainTexts() {
    return Container(
      padding: EdgeInsets.only(bottom:10),
      child: RichText(text: TextSpan(children: <TextSpan>[
              TextSpan(
                    text: UIStrings.text_main_card,
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: '\n' +  UIStrings.text_add_balans_card,
                    style:UIThemes.bankCardControlsDetailsTextStyle()),
      ]))
      );
  }

  //-- Card AutoPay Texts --
  Widget cardAutoPayTexts() {
    return Container(      
      child: RichText(text: TextSpan(children: <TextSpan>[
              TextSpan(
                    text: UIStrings.text_autopay_card,
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              TextSpan(
                    text: '\n' +  UIStrings.text_autopay_details_card,
                    style: UIThemes.bankCardControlsDetailsTextStyle()),
      ]))
      );
  }

  // -- del button --
  Widget cardDelButton() {
    return Container(
            height: 40,
            child: RaisedButton(
                    color: UIThemes.primaryColor,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    elevation: 16.0,
                    child: Center(child:Text(UIStrings.text_delete_card, style: UIThemes.button16TextStyle(),)),
                    onPressed: () {}
            ),
    );
  }
}