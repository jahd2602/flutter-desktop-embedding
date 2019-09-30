import 'package:flutter/foundation.dart';

class Transaction {
  @required
  String id;
  @required
  String title;
  @required
  double amount;
  @required
  DateTime dateTime;

  Transaction({this.id, this.title, this.amount, this.dateTime});
}
