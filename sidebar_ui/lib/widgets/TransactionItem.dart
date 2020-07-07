import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
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
          'Macbook Pro',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          'Apple',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
        trailing: Text(
          '-2499\$',
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
