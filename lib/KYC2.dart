import 'package:flutter/material.dart';
import 'package:zerobalance/Graph.dart';
import 'package:zerobalance/TransactionScreen.dart';
import 'package:zerobalance/main.dart';

class Kyc2 extends StatefulWidget {
  Kyc2({Key? key}) : super(key: key);

  @override
  State<Kyc2> createState() => _Kyc2State();
}

class _Kyc2State extends State<Kyc2> {
  int totalSpends = trans.totalSpend;

  int projectSpendings = 1500;

  int highestSpendings = trans.maxSpend;

  int cardBalance = trans.cardBalance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 20,
        color: Colors.indigo,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, bottom: 8, top: 8),
              child: SizedBox(
                child:
                    Text('Total Spends', style: TextStyle(color: Colors.white)),
                width: 300,
              ),
            ),
             Padding(
              padding: EdgeInsets.only(left: 15.0, bottom: 8),
              child: SizedBox(
                child: Text(totalSpends.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                width: 300,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              child: Text(
                  '₹18000 -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  - - budget',
                  style: TextStyle(color: Colors.grey[350], fontSize: 12)),
              width: 300,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 110,
                child: LineChartSample2(listX: [0,10,20,30],listY: [0,10,20,25],),
              ),
            ),
            SizedBox(
              width: 300,
              child: Text(
                  '                                           Jan months data ',
                  style: TextStyle(color: Colors.grey[350], fontSize: 12)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                        child: Container(
                          width: 150,
                          height: 68,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.red[100],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      width: 20,
                                      height: 20,
                                    ),
                                    Text(
                                      'Projected Saving',
                                      style: TextStyle(fontSize: 12.0),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                const SizedBox(
                                  child: Text(
                                    '₹1500',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                        child: Container(
                          width: 150,
                          height: 68,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.red[100],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      width: 20,
                                      height: 20,
                                    ),
                                    const Text(
                                      'Highest Spent',
                                      style: TextStyle(fontSize: 12.0),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                 SizedBox(
                                  child: Text(
                                    highestSpendings.toString(),
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Card(
                      color: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: SizedBox(
                        width: 150,
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Card balance',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[800]),
                              ),
                              SizedBox(
                                height: 9.0,
                              ),
                              Row(
                                children: [
                                   Text(
                                    cardBalance.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.red[100],
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20))),
                                    width: 55,
                                    height: 20,
                                    child: Center(
                                        child: Text(
                                      ' Low bal',
                                      style: TextStyle(
                                          color: Colors.red[700],
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    )),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 65,
                                  ),
                                  SizedBox(
                                    width: 62,
                                    height: 62,
                                    child: MaterialButton(
                                      onPressed: () async{
                                     final result = await   Navigator.push(context, MaterialPageRoute(builder: (context)=>Transact()));
                                       setState((){
                                         totalSpends=trans.totalSpend;
                                         highestSpendings=trans.maxSpend;
                                         cardBalance=trans.cardBalance;
                                       });
                                     },
                                      color: Colors.indigo,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(31))),
                                      child: const Text(
                                        'Add',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 18,
            )
          ],
        ),
      ),
    );
  }
}
