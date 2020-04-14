class TransactionModel {
  final String description;
  final String status;
  final int sum;

TransactionModel({
  this.description,
  this.status,
  this.sum
  });

}
//-- TransactionItems --
class TransactionItemsModel {
  List<TransactionModel> items;
  
  TransactionItemsModel({this.items});

  List<TransactionModel> takeTodayItems()
  {
    this.items = new List<TransactionModel>();
    this.items.add(new TransactionModel(description: 'Water bill', status: 'Unsuccessfully', sum: -280));
    return this.items;
  }

  List<TransactionModel> takeYestadayItems()
  {
    this.items = new List<TransactionModel>();
    this.items.add(new TransactionModel(description: 'Income:Salary oct', status: 'Successfully', sum: 1200));
    this.items.add(new TransactionModel(description: 'Electric bill',status: 'Unsuccessfully',sum: -480));
    this.items.add(new TransactionModel(description: 'Income: Jane transfers',status: 'Unsuccessfully',sum: 500));
    this.items.add(new TransactionModel(description: 'Internet bill',status: 'Unsuccessfully',sum: -100));
    return this.items;
  }
}

// -- Card --
class CardModel {
  final String userName;
  final String bankName;
  final BigInt cardNumber;
  final double sum;

  CardModel({
    this.userName,
    this.bankName,
    this.cardNumber,
    this.sum
  });
}