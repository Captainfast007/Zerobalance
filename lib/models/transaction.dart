import '../constants.dart';
import 'package:hive/hive.dart';
part 'transaction.g.dart';

@HiveType(typeId:0)
class Transaction extends HiveObject{
  @HiveField(0)
  int amount;
  @HiveField(1)
  String enterDate;
  @HiveField(2)
  String mode;
  @HiveField(3)
  String message;
  Transaction({required this.amount, required this.enterDate, required this.mode, this.message=''});
}