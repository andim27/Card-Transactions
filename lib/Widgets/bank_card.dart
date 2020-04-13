import 'package:flutter/material.dart';
import '../Constants/app_colors.dart';
import 'bank_card_view.dart';


class BankCard extends StatefulWidget {
  final cardNumber;
  Color backgroundColor;
  double cardWidth;
  bool isCardView = false;
  BankCard({Key key, this.cardNumber,this.backgroundColor,this.cardWidth}) : super(key: key);
  @override
  _BankCardState createState() => _BankCardState();
}

class _BankCardState extends State<BankCard> {
  @override
  initState(){
    super.initState();
    print(widget.isCardView);

  }
  @override
  Widget build(BuildContext context) {
      switch (widget.cardNumber) {
      case 1:
        widget.backgroundColor = AppColors.cardBackGround_1;
        widget.cardWidth = 0.9;
        widget.isCardView = true;
        break;
      case 2:
        widget.backgroundColor = AppColors.cardBackGround_2;
        widget.cardWidth = 0.8;
        break;
      case 3:
        widget.backgroundColor = AppColors.cardBackGround_3;
        widget.cardWidth = 0.7;
        
        break;
      default:
    }
    return Center(child:Container(     
       height: 200,
       width: MediaQuery.of(context).size.width * widget.cardWidth,
       margin: EdgeInsets.all(20),                    
       child: Card(
              color: widget.backgroundColor,
              elevation: 8.0,
              //margin: EdgeInsets.all(30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
             child: (widget.isCardView )?  new BankCardView():null
              
            ),
    )  
    );
  }
}