import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionsTile extends StatelessWidget {
  final IconData icon;
  final String transactionName;
  final String description;
  final double amount;
  final DateTime date;
  const TransactionsTile(
      {super.key,
      required this.icon,
      required this.transactionName,
      required this.description,
      required this.amount,
      required this.date});

  String formatDateWithSuffix(DateTime date) {
    // Get the day, month, and year
    int day = date.day;
    String month = DateFormat('MMMM').format(date); // Full month name
    int year = date.year;

    // Determine the suffix (st, nd, rd, th)
    String suffix;
    if (day >= 11 && day <= 13) {
      suffix = 'th';
    } else {
      switch (day % 10) {
        case 1:
          suffix = 'st';
          break;
        case 2:
          suffix = 'nd';
          break;
        case 3:
          suffix = 'rd';
          break;
        default:
          suffix = 'th';
      }
    }

    // Return the formatted string
    return '$day$suffix $month, $year';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(99)),
              child: Icon(icon),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transactionName,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 150,
                  child: Text(
                    description,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "\$$amount",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  formatDateWithSuffix(date),
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
                ),
              ],
            ),
          ],
        ));
  }
}



// ListTile(
//         leading: Icon(icon),
//         title: Text(transactionName),
//         subtitle: Text(description),
//         trailing: Column(
//           children: [
//             Text("\$$amount"),
//             Text(date.toUtc().toString()),
//           ],
//         ),
//       )
