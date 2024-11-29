import 'package:flutter/material.dart';

class TransactionModel {
  final IconData icon;
  final String transactionName;
  final String description;
  final double amount;
  final DateTime date;
  const TransactionModel(
      {required this.icon,
      required this.transactionName,
      required this.description,
      required this.amount,
      required this.date});
}
