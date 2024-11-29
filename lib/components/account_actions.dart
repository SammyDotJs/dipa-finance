import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  final String label;
  final IconData icon;
  const AccountActions({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(99)),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10,),
        Text(label, style: const TextStyle(fontSize: 16),)
      ],
    );
  }
}
