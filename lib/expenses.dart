import 'package:expense_tracker_app/expense.dart';
import 'package:expense_tracker_app/expense_list.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpense = [
    Expense(
        category: Category.work,
        title: "Flutter Course",
        amount: 19.99,
        date: DateTime.now()),
    Expense(
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
        children: [
          Text("Chart"),
          Expanded(child: ExpenseList(expenses: _registeredExpense)),
        ],
      ),
    );
  }
}
