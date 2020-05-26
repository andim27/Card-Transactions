import 'package:flutter/material.dart';
import 'package:msp_highway/constants/uiimages.dart';
import 'package:msp_highway/constants/uistrings.dart';
import 'package:msp_highway/constants/uithemes.dart';

class AppBarWithCloseIcon extends StatelessWidget implements PreferredSizeWidget{
  final String title;

  const AppBarWithCloseIcon({Key key, this.title = UIStrings.contact_us}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            children: <Widget>[
              Text(
                this.title,
                style: UIThemes.pageTitleTextStyle(),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ],
          )),
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.only(right: 16),
            width: 36,
            height: 36,
            child: IconButton(
              icon: Image.asset(
                UIImages.close_button_icon,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        )
      ],
    );
  }



  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
