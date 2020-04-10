import 'package:flutter/material.dart';
import 'Pages/TransactionPage.dart';
import 'Constants/app_colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CardTransactions',
      theme: ThemeData(
        primarySwatch: AppColors.primary,
        scaffoldBackgroundColor:  AppColors.transactionBody,
        appBarTheme: AppBarTheme(
          elevation: 0, // This removes the shadow from all App Bars.
        )
      ),
      home: TransactionPage(title: 'Transaction'),
    );
  }
}
