import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dipa_finance/pages/card_page.dart';
import 'package:dipa_finance/pages/home_page.dart';
import 'package:dipa_finance/pages/profile_page.dart';
import 'package:dipa_finance/pages/stat_page.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int _index = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _index = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const CardPage(),
    const StatPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: _pages[_index],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: BottomNavigationBar(
            elevation: 0,
            iconSize: 24,
            selectedItemColor: Theme.of(context).colorScheme.onTertiary,
            unselectedItemColor: Theme.of(context).colorScheme.tertiary,
            showUnselectedLabels: true,
            unselectedLabelStyle: const TextStyle(fontSize: 16),
            selectedLabelStyle: const TextStyle(fontSize: 16),
            backgroundColor: Colors.grey,
            onTap: _navigateBottomBar,
            currentIndex: _index,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    BootstrapIcons.house_fill,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    BootstrapIcons.credit_card,
                  ),
                  label: "Card"),
              BottomNavigationBarItem(
                  icon: Icon(
                    BootstrapIcons.file_bar_graph_fill,
                  ),
                  label: "stat"),
              BottomNavigationBarItem(
                  icon: Icon(
                    BootstrapIcons.person,
                  ),
                  label: "Profile"),
            ]),
      ),
    );
  }
}

// import 'package:bootstrap_icons/bootstrap_icons.dart';
// import 'package:dipa_finance/pages/card_page.dart';
// import 'package:dipa_finance/pages/home_page.dart';
// import 'package:dipa_finance/pages/profile_page.dart';
// import 'package:dipa_finance/pages/stat_page.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class TabBarScreen extends StatefulWidget {
//   const TabBarScreen({super.key});

//   @override
//   State<TabBarScreen> createState() => _TabBarScreenState();
// }

// class _TabBarScreenState extends State<TabBarScreen> {
//   int _index = 0;

//   void _navigateBottomBar(int index) {
//     setState(() {
//       _index = index;
//     });
//   }

//   final List<Widget> _pages = [
//     const HomePage(),
//     const CardPage(),
//     const StatPage(),
//     const ProfilePage(),
//   ];

// }

/*
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: _pages[_index],
        bottomNavigationBar: CurvedNavigationBar(
            onTap: _navigateBottomBar,
            backgroundColor: Theme.of(context).colorScheme.surface,
            animationCurve: Curves.ease,
            items: const <Widget>[
              Icon(
                BootstrapIcons.house_fill,
              ),
              Icon(
                BootstrapIcons.credit_card,
              ),
              Icon(
                BootstrapIcons.file_bar_graph_fill,
              ),
              Icon(
                BootstrapIcons.person,
              ),
            ]));
  }
  */
