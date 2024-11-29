import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class StatPage extends StatefulWidget {
  const StatPage({super.key});

  @override
  State<StatPage> createState() => _StatPageState();
}

enum DateLabel {
  blue('Blue', Colors.blue),
  pink('Pink', Colors.pink),
  green('Green', Colors.green),
  yellow('Orange', Colors.orange),
  grey('Grey', Colors.grey);

  const DateLabel(this.label, this.color);
  final String label;
  final Color color;
}

class _StatPageState extends State<StatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          children: [
            IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios)),
            const Text(
              "Statistic",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            const Spacer(),
            DropdownMenu<DateLabel>(
              width: 150,
              trailingIcon: const Icon(Icons.arrow_drop_down_sharp),
              menuStyle: MenuStyle(
                  backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  elevation: const WidgetStatePropertyAll(0),
                  padding: const WidgetStatePropertyAll(EdgeInsets.all(0)),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.grey.shade500),
                      borderRadius: BorderRadius.circular(12)))),
              inputDecorationTheme: InputDecorationTheme(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade500),
                      borderRadius: BorderRadius.circular(12)),
                  contentPadding: const EdgeInsets.all(12),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
              initialSelection: DateLabel.blue,
              dropdownMenuEntries: DateLabel.values
                  .map<DropdownMenuEntry<DateLabel>>((DateLabel color) {
                return DropdownMenuEntry<DateLabel>(
                    value: color,
                    label: color.label,
                    enabled: color.label != 'Grey',
                    labelWidget: Text(
                      color.label,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    style: MenuItemButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                    ));
              }).toList(),
            )
          ],
        ),
        bottom: TabBar(
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            dividerHeight: 3,
            labelPadding: const EdgeInsets.symmetric(vertical: 10),
            dividerColor: Colors.grey.shade200,
            labelStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            unselectedLabelColor: Colors.grey.shade600,
            tabs: const [
              Text(
                "Income",
              ),
              Text(
                "Outcome",
              )
            ]),
      ),
      body: const TabBarView(children: [
        Icon(BootstrapIcons.send),
        Icon(BootstrapIcons.airplane),
      ]),
    );
  }
}
