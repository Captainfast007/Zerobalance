import 'dart:math';

import 'package:hive/hive.dart';
import 'package:zerobalance/constants.dart';
import 'package:zerobalance/models/transaction.dart';

class TransactionDB{
List<int> amounts=[];
List<int>dates=[];
int maxSpend=1500;
int totalSpend=12000;
int cardBalance=1500;
Future<void> AddAmount(int amount, String mode, String date, String message)async{
  if(cardBalance<amount){
    return  ;
  }
  totalSpend+=amount;
  cardBalance=cardBalance-amount;
  amounts.add(amount);
  maxSpend=max(maxSpend,amount);
  dates.add(int.parse(date[0]+date[1]));
  var box = await Hive.openBox(TransactionBox);
  await box.put(amounts.length, Transaction(amount: amount,enterDate: date,mode:mode));
}
 addAll(transactions) {
  try{
  transactions.forEach((element) {
    if(element is Transaction){
    if(cardBalance<element.amount)return;
    amounts.add(element.amount);
    dates.add(int.parse(element.enterDate[0]+element.enterDate[1]));
    totalSpend+=element.amount;
    cardBalance=cardBalance-element.amount;
    maxSpend=max(maxSpend, element.amount);
    }
  });}
      catch(e){
    print(e);
      }
      print(amounts);
}
}


