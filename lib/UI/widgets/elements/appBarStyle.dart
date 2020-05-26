import 'package:flutter/material.dart';
import 'package:msp_highway/constants/uithemes.dart';

typedef void EmptyCallback();


Widget simpleAppBarWithBackClick(String text, EmptyCallback callback) =>
    AppBar(
      title: Text(text, style: UIThemes.pageTitleTextStyle()),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.arrow_back_ios, size: 23.0, color: Colors.black),
            ),
            onPressed: () {
                callback();
            },
          );
        },
      ),
    );