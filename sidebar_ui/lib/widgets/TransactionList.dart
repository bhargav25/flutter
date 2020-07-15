import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sidebar_ui/models/transaction.dart';
import 'package:sidebar_ui/providers/transaction_prov.dart';

import './TransactionItem.dart';

class TransactionList extends StatelessWidget {
  // final List<Transaction> transactions;
  // TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Transactions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.filter_list,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
        Consumer<Trx_Model>(builder: (ctx, trx, child) {
          return Container(
            height: 350,
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                print(trx.transactions[index]);
                return TransactionItem(trx.transactions[index]);
              },
              itemCount: trx.transactions.length,
              separatorBuilder: (context, index) {
                return Divider(height: 16);
              },
            ),
          );
        })
      ],
    );
  }
}
