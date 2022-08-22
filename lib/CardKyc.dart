import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:zerobalance/Graph.dart';
import 'package:zerobalance/KYC2.dart';
import 'package:zerobalance/constants.dart';
import 'package:zerobalance/main.dart';

class KycCard extends StatelessWidget {
  KycCard({Key? key}) : super(key: key);


  final List<MapEntry<double,double>> list=[MapEntry(1, 1),MapEntry(1, 2)];
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 20,
        color: Colors.indigo,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 8, top: 8),
              child: SizedBox(
                child:
                    Text('Total Spends', style: TextStyle(color: Colors.white)),
                width: 300,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, bottom: 8),
              child: SizedBox(
                width: 300,
                child: Text('₹0',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 300,
              child: Text(
                  '₹18000 -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  - - budget',
                  style: TextStyle(color: Colors.grey[350], fontSize: 12)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const SizedBox(
                height: 140,

                child: LineChartSample2( listX: [1,2],listY: [1,2],),
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
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      const SizedBox(
                        width: 300,
                        child: Text('Pending KYC',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 5),
                      const SizedBox(
                        width: 300,
                        child: Text(
                            'Lorem Ipsum is simply dummy text\nof the printing and typesetting \nindustry. Lorem',
                            style:
                                TextStyle(color: Colors.black, fontSize: 12)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        onPressed: () async{
                          var box=Hive.box(SettingsBox);
                         await box.put("welcome", true);
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                        },
                        color: Colors.red,
                        child: Text(
                          'Complete Now',
                          style: TextStyle(color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(18))),
                      )
                    ],
                  ),
                ),
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
