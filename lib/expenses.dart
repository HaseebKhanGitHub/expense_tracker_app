import 'package:expense_tracker_app/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<expense> _registeredExpense = [
    expense(
        category: Category.work,
        title: "Flutter Course",
        amount: 19.99,
        date: DateTime.now()),
    expense(
        category: Category.leisure,
        title: "Python Course",
        amount: 15.99,
        date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [Text("Chart")],
      ),
    );
  }
}
