import 'package:flutter/material.dart';
import 'package:sidebar_ui/models/transaction.dart';

class Trx_Model extends ChangeNotifier{
  List<Transaction> _userTransaction = [];

  List get transactions => _userTransaction;
  
  addNewTransaction(Transaction newTrx){
    _userTransaction.add(newTrx);
    notifyListeners();
  }
}