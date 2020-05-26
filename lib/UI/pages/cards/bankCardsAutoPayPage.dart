import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:msp_highway/constants/uistrings.dart';
import 'package:msp_highway/constants/uithemes.dart';
import 'package:msp_highway/helpers/stringHelper.dart';
import 'package:msp_highway/ui/widgets/elements/appBarStyle.dart';
import 'package:msp_highway/ui/widgets/elements/dropMenuWidget.dart';
import 'cardButtonWidget.dart';
import 'bankCardsList.dart';

//-- Виджеты --
class BankCardsAutoPayPage extends StatefulWidget {
  @override
  _BankCardsState createState() => _BankCardsState(  
  );
}

class _BankCardsState extends State<BankCardsAutoPayPage> {
  static const paddingPageLeft = 30.0;
  static const paddingPageRight = 10.0;
  static const paddingFromButton = 100.0;
  @override
  void initState() {
    super.initState();
    print('BankCards!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: simpleAppBarWithBackClick(
                        capitalize(UIStrings.text_autopay_card), () {Navigator.pop(context);}
                      ),
              body: makePage(context)
        );
  }

  Widget makePage(BuildContext context) {
    return Column(children: <Widget>[
            autoPayControlsView(context),
            Divider(thickness: 1,indent: paddingPageLeft, endIndent: paddingPageLeft),
            autoPaySumView(),
            Container(
              padding: EdgeInsets.only(left: paddingPageLeft, top:20),
              alignment: Alignment.centerLeft,
              child: Text(UIStrings.text_pay_from_card, style: UIThemes.normal14TextStyle().copyWith(fontWeight: FontWeight.bold))),
            cardsListView(context),
            cardRemoveAddButton(),
            SizedBox(height: 40),
            autoPayButtons(context),
    ]);
  }

  // -- Widget blocks --
  Widget autoPayControlsView(BuildContext context) {
    String _contractNumber = '156837';
    return Container(
      padding: EdgeInsets.symmetric(horizontal: paddingPageLeft),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
        Expanded(
          flex:50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Text(UIStrings.text_autopay_on, style: UIThemes.normal14TextStyle().copyWith(fontWeight: FontWeight.bold)),
            Text(UIStrings.text_contract+': '+_contractNumber, style: UIThemes.bankCardControlsDetailsTextStyle()),
          ])
        ),
        Expanded(
          flex:30,
          child: Container(
            alignment: Alignment.centerLeft,
            width: 20,height: 20,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(width: 1,color: Colors.black,style: BorderStyle.solid)
              ),
              child: Center(child:Text('?'))
            )
          ),
        Expanded(
          flex:20,
          child: Switch(
            value: true,
            activeTrackColor: Colors.grey,
            activeColor: UIThemes.primaryColor,
            onChanged: (value) {}
            )
        ),
      ])
    );
  }

  // -- AutoPaySum --
  Widget autoPaySumView() {
    return Container(
      padding: EdgeInsets.only(left: paddingPageLeft, right: paddingPageLeft),
      child: Column(
        children: <Widget>[
          Row(            
            children: <Widget>[
              Expanded(flex:50, child: textBalans()),
              SizedBox(width: 30),           
              Expanded(flex:50, child: textSum()),    
              ]
            ),
          SizedBox(height: 10),         
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[             
              Expanded(flex:50, child: selectBalans()),
              SizedBox(width: 30),
              Expanded(flex:50,  child: selectSum()),            
              ]
            )
          ],
      )
    );
  }

  Widget textBalans() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(UIStrings.text_minimum, style: UIThemes.normal14TextStyle().copyWith(fontWeight: FontWeight.bold)),
        Text(UIStrings.text_balans,  style: UIThemes.normal14TextStyle().copyWith(fontWeight: FontWeight.bold))
    ]);
  }

  Widget textSum() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Text(UIStrings.text_summa, style: UIThemes.normal14TextStyle().copyWith(fontWeight: FontWeight.bold)),
      Text(UIStrings.text_autopay_to, style: UIThemes.normal14TextStyle().copyWith(fontWeight: FontWeight.bold))
    ]);
  }

  Widget selectBalans() {
    List<String> _balansItems = ['500', '100'];
    return Container(child:  DropMenuWidget(items: _balansItems, onSelected: null));
  }

  Widget selectSum() {
    List<String> _sumItems = ['1500', '2000'];
    return Container(child: DropMenuWidget(items: _sumItems, onSelected: null));
  }

  // -- Buttons --
  Widget cardRemoveAddButton() {
    return Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
                IconButton(icon: Icon(Icons.remove), color: UIThemes.accentColor, onPressed:(){}),
                IconButton(icon: Icon(Icons.add), color: Colors.grey, onPressed:(){})
              ]
        )
      );
    
  }

  Widget autoPayButtons(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CardButtonWidget(color: Colors.white, text: UIStrings.common_cancel, textStyle: TextStyle(color:Colors.black,fontSize: 12.0,),onPressed: (){print('Cancel');}),
          CardButtonWidget(color: UIThemes.primaryColor, text: UIStrings.common_save,textStyle: TextStyle(color:Colors.white,fontSize: 12.0,), onPressed: (){print('Cancel');}),
        ])
      );
  }
}