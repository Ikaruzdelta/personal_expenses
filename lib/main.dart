import 'package:flutter/material.dart';
import 'package:personal_expenses/components/transaction_form.dart';
import 'package:personal_expenses/components/transaction_list.dart';
import 'models/transaction.dart';
import 'package:intl/intl.dart';

void main() => runApp(Personal_expensesApp());

class Personal_expensesApp extends StatelessWidget {
  const Personal_expensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 100.10,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Expenses'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            child: Card(
              color: Colors.blue,
              child: Text('Gráfico'),
              elevation: 5,
            ),
          ),
          TransactionList(_transactions),
          TransactionForm(),
        ],
      ),
    );
  }
}
