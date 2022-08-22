import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:zerobalance/CardKyc.dart';
import 'package:zerobalance/KYC2.dart';
import 'package:zerobalance/constants.dart';
class kyc extends StatelessWidget {
  const kyc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var box=Hive.box(SettingsBox);
    if(box.isEmpty) {
      return KycCard();
    } else {
      return Kyc2();
    }
  }
}
