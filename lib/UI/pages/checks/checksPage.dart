import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:msp_highway/constants/uiimages.dart';
import 'package:msp_highway/constants/uistrings.dart';
import 'package:msp_highway/constants/uithemes.dart';
import 'package:msp_highway/ui/widgets/elements/dropMenuWidget.dart';
import 'package:msp_highway/ui/widgets/elements/appBarStyle.dart';

class ChecksPage extends StatefulWidget {
  ChecksPage({Key key}) : super(key: key);

  @override
  _ChecksPageState createState() => _ChecksPageState();
}

class _ChecksPageState extends State<ChecksPage> {
  List<String> _yearsItems = ["2020","2021","2022"];
  List<String> _monthItems = ["Январь 2020","Февраль 2020"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIThemes.backgroundColor,
      appBar: simpleAppBarWithBackClick(
          UIStrings.checks, () => Navigator.pop(context)),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 30, 30, 10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _selectYears(),
            SizedBox(height: 20),
            _detailsYear(context),
          ]
      )
      );
  }

   //-- Page content --

  Widget _selectYears() {
     return Container(
       padding: EdgeInsets.symmetric(horizontal: 10),
       width: double.infinity,
       child: DropMenuWidget(
                items: _yearsItems,
                onSelected: (value) {}
              ),
       );
  }

  Widget _detailsYear(BuildContext context) {
     return  Expanded(       
            child: ListView.builder(
            itemCount: _monthItems.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(                
                leading: Image.asset(UIImages.check,width: 28,height: 38),
                title: Text(_monthItems[index]),
                onTap: (){print(_monthItems[index]);},
              );
            }
          ),
     );
  }

}