import 'package:flutter/material.dart';

import './TransactionItem.dart';

class TransactionList extends StatelessWidget {
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
        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return TransactionItem();
          },
          itemCount: 10,
          separatorBuilder: (context, index) {
            return Divider(height: 16);
          },
        )
      ],
    );
  }
}
