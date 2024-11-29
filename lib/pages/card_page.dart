import 'package:dipa_finance/components/account_actions.dart';
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            color: Colors.orange,
            height: 530,
          ),
          Container(
            color: Colors.blue,
            height: 200,
          ),
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Container(
              height: 250,
              decoration: BoxDecoration(color: Colors.grey.shade100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "YOUR BALANCE",
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "\$59,790.00",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {
                            print("IconButton pressed"); // Debugging print
                          },
                          icon: Icon(
                            Icons.visibility_outlined,
                            color: Colors.grey.shade500,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AccountActions(
                          label: "Transfer", icon: Icons.arrow_upward),
                      AccountActions(
                          label: "Withdraw", icon: Icons.arrow_downward),
                      AccountActions(label: "Invest", icon: Icons.money),
                      AccountActions(label: "Top Up", icon: Icons.add)
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print("Outside log");
                      },
                      child: Text("TEST"))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
