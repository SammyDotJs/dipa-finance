import 'package:dipa_finance/data/dummy_transaction.dart';
import 'package:dipa_finance/pages/card_page.dart';
import 'package:dipa_finance/pages/home_page.dart';
import 'package:dipa_finance/pages/profile_page.dart';
import 'package:dipa_finance/pages/stat_page.dart';
import 'package:dipa_finance/pages/tab_bar_screen.dart';
import 'package:dipa_finance/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => DummyTransaction(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DefaultTabController(length: 2, child: TabBarScreen()),
      routes: {
        '/homePage': (context) => const HomePage(),
        '/cardPage': (context) => const CardPage(),
        '/statPage': (context) => const StatPage(),
        '/profilePage': (context) => const ProfilePage(),
      },
      theme: lightMode,
    );
  }
}
