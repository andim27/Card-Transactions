//-----------------------------------------------------
//-- Copyright (c) 2020 Andrey MK  http://t.me/as_amk 
//-- All rights reserved.                             
//-----------------------------------------------------
import 'package:flutter/material.dart';
import 'Pages/TransactionPage.dart';
import 'Constants/app_colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CardTransactions',
      theme: ThemeData(
        primarySwatch: AppColors.primary,
        scaffoldBackgroundColor:  AppColors.transactionBody,
        appBarTheme: AppBarTheme(
          elevation: 0,
        )
      ),
      home: TransactionPage(title: 'Transaction report'),
    );
  }
}
