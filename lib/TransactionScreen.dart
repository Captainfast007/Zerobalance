import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:zerobalance/TransactionScreen.dart';
import 'package:zerobalance/backend.dart';
import 'package:zerobalance/constants.dart';
import 'package:zerobalance/main.dart';
import 'package:zerobalance/models/transaction.dart';
class Transact extends StatefulWidget {
   const Transact({Key? key}) : super(key: key);

  @override
  State<Transact> createState() => _TransactScreenState();
}

class _TransactScreenState extends State<Transact> {
int amount=0;

DateTime date=DateTime.now();
 late TextEditingController controller;


@override
  void initState() {
controller=TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Adding Transaction',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                'Enter Spend amount',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Enter the amount that you have spend without using zero balance',
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (val)=>amount=int.parse(val),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.blue)),
                    labelText: 'Amount'),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Enter Date',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                onTap: (){
                  controller.text=date.day.toString()+'\\'+date.month.toString()+'\\'+date.year.toString();
                  setState((){});
                },
                controller: controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.blue)),
                    labelText: 'Enter Date'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Mode of Payment',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 50,
                      width: 110,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: const Text(
                          'UPI',
                          style: TextStyle(color: Colors.indigo),
                        ),
                      )),
                  SizedBox(
                    width: 13,
                  ),
                  Container(
                      height: 50,
                      width: 110,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: const Text(
                          'CARD',
                          style: TextStyle(color: Colors.indigo),
                        ),
                      )),
                  SizedBox(
                    width: 13,
                  ),
                  Container(
                      height: 50,
                      width: 110,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: const Text(
                          'CASH',
                          style: TextStyle(color: Colors.indigo),
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Quick note',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.blue)),
                    labelText: 'Quick note'),
              ),
              SizedBox(height: 25,),
              Container(
                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: MaterialButton(
                    onPressed: ()async{
                      trans.AddAmount(amount, 'UPI',controller.text, 'hi');
                      Navigator.pop(context);
                    },
                    color: Colors.indigo,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Text(
                      'Save',
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                  ))


            ],
          ),
        ),
      ),
    );
  }
}
