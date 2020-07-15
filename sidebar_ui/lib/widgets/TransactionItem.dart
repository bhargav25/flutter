import 'package:flutter/material.dart';
import 'package:sidebar_ui/models/transaction.dart';
import 'package:intl/intl.dart';


class TransactionItem extends StatelessWidget {
  final Transaction trx;
  TransactionItem(this.trx);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ), 
        boxShadow: [
          BoxShadow(
            blurRadius: 10.0,
            color: Colors.white,
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          trx.title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          DateFormat.yMMMd().format(trx.date),
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
        trailing: Text(
          trx.amount.toString(),
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(
          Icons.computer,
          color: Colors.black,
        ),
      ),
    );
  }
}
