// -- CardModel,CardType --
// TODO  согласовать с бэкенд моделью
class CardType {
  static String blank;
  static String visa;
  static String mastercard;
  static String mir;
}

class CardModel {
  String userName = 'PAVEL FEDOROV';
  String cardName = CardType.visa;
  String cardNumber = '475612345679018';
  String cardNumberLeft  = '4756';
  String cardNumberRight = '3125';
  String sum ='3.469.52';

  CardModel({this.userName,this.cardName,this.cardNumber});
}