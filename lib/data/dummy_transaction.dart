import "package:dipa_finance/models/transaction_model.dart";
import "package:flutter/material.dart";

class DummyTransaction extends ChangeNotifier {
  final List<TransactionModel> _transactions = [
    TransactionModel(
        icon: Icons.youtube_searched_for,
        transactionName: "YouTube",
        description: "Payed for youtube premium",
        amount: 26.99,
        date: DateTime.now()),
    TransactionModel(
        icon: Icons.shopping_bag,
        transactionName: "Groceries",
        description: "groceries for the family",
        amount: 52.21,
        date: DateTime.now()),
    TransactionModel(
        icon: Icons.abc,
        transactionName: "Amazon",
        description: "Payed for AWS",
        amount: 36.00,
        date: DateTime.now()),
    TransactionModel(
        icon: Icons.plumbing,
        transactionName: "PLumber",
        description: "bathrom work",
        amount: 5.00,
        date: DateTime.now()),
  ];

  List<TransactionModel> get transactions => _transactions;
}
