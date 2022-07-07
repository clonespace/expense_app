import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 'Sn1',
      title: 'Miscellaneous',
      amount: 104.45,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'Sn2',
      title: 'Groceries',
      amount: 156.20,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String Txtitle, double Txamount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: Txtitle,
      amount: Txamount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
