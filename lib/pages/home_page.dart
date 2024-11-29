import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:dipa_finance/components/account_detail_page.dart';
import 'package:dipa_finance/components/transactions_tile.dart';
import 'package:dipa_finance/data/dummy_transaction.dart';
import 'package:flutter/material.dart';
import "package:provider/provider.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final transactions = context.watch<DummyTransaction>().transactions;

    final statusBarHeight = MediaQuery.of(context).viewPadding;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  color: Colors.transparent,
                  height: 400,
                ),
                // Container(
                //   color: Colors.blue,
                //   height: 230,
                // ),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: statusBarHeight.top, horizontal: 20),
                  height: 300,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFF110C31), Color(0xFF1D1661)])),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surface,
                                borderRadius: BorderRadius.circular(99)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Hello Aliyah",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                "Welcome",
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                BootstrapIcons.bell,
                                size: 30,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                const AccountDetailPage(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(99)),
                        child: const Center(child: Icon(Icons.favorite)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const SizedBox(
                        width: 250,
                        child: Text(
                          "Lets check your Financial Insight for the moth of JUne",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios_outlined))
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Recent Transactions",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: transactions.length,
                padding: const EdgeInsets.all(0),
                itemBuilder: (context, index) {
                  final transactionItem = transactions[index];

                  return TransactionsTile(
                      icon: transactionItem.icon,
                      transactionName: transactionItem.transactionName,
                      description: transactionItem.description,
                      amount: transactionItem.amount,
                      date: transactionItem.date);
                })
          ],
        ),
      ),
    );
  }
}
