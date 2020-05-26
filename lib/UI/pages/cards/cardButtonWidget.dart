import 'package:flutter/material.dart';
import 'package:msp_highway/constants/uithemes.dart';

/// Виджет для страниц карты с настройками текста.
class CardButtonWidget extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final TextStyle textStyle;
  final Function() onPressed;

  const CardButtonWidget({
    Key key,
    @required this.color,
    this.icon,
    @required this.text,
    this.textStyle,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
          side: BorderSide(color: (color == Colors.white)?Colors.black:color),
        ),
        elevation: 0.0,
        child: Row(
          children: <Widget>[

            if (icon != null) Icon(icon, color: Colors.white),

            Text(
              text.toUpperCase(),
              style: textStyle,
            ),

          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}