import 'package:dipa_finance/components/account_actions.dart';
import 'package:flutter/material.dart';

class AccountDetailPage extends StatefulWidget {
  const AccountDetailPage({super.key});

  @override
  State<AccountDetailPage> createState() => _AccountDetailPageState();
}

class _AccountDetailPageState extends State<AccountDetailPage> {
  bool _isVisible = true;

  void toggleAccountBalanceVisibility() {
    print(_isVisible);
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 120,
        left: 20,
        right: 20,
        child: Container(
          padding: const EdgeInsets.all(20),
          height: 250,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(
                    0,
                    5.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
              ]),
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
                    _isVisible ? "\$59,790.00" : "**********",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        print("IconButton pressed"); // Debugging print
                        toggleAccountBalanceVisibility();
                      },
                      icon: Icon(
                        _isVisible
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
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
                  AccountActions(
                      label: "Invest", icon: Icons.money),
                  AccountActions(
                      label: "Top Up", icon: Icons.add)
                ],
              )
            ],
          ),
        ));
  }
}



// import 'package:dipa_finance/components/account_actions.dart';
// import 'package:flutter/material.dart';

// class AccountDetailPage extends StatefulWidget {
//   const AccountDetailPage({super.key});

//   @override
//   State<AccountDetailPage> createState() => _AccountDetailPageState();
// }

// class _AccountDetailPageState extends State<AccountDetailPage> {
//   bool _isVisible = true;

//   void toggleAccountBalanceVisibility() {
//     print(_isVisible);
//     setState(() {
//       _isVisible = !_isVisible;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       clipBehavior: Clip.none,
//       children: [
//         GestureDetector(
//           onTap: () {
//             print("IconButton pressed");
//           },
//           // Ensure gestures are captured
//           behavior: HitTestBehavior.opaque,
//           child: Container(
//             color: Colors.transparent,
//             height: 130,
//           ),
//         ),
//         Positioned(
//             top: -150,
//             left: 20,
//             right: 20,
//             child: Container(
//               padding: const EdgeInsets.all(20),
//               height: 250,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(20),
//                   boxShadow: const [
//                     BoxShadow(
//                       color: Colors.black12,
//                       offset: Offset(
//                         0,
//                         5.0,
//                       ),
//                       blurRadius: 10.0,
//                       spreadRadius: 2.0,
//                     ),
//                   ]),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "YOUR BALANCE",
//                     style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         _isVisible ? "\$59,790.00" : "*******",
//                         style: const TextStyle(
//                             color: Colors.black,
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       IconButton(
//                           onPressed: () {
//                             print("IconButton pressed"); // Debugging print
//                             toggleAccountBalanceVisibility();
//                           },
//                           icon: Icon(
//                             _isVisible
//                                 ? Icons.visibility_outlined
//                                 : Icons.visibility_off_outlined,
//                             color: Colors.grey.shade500,
//                           ))
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   const Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       AccountActions(
//                           label: "Transfer", icon: Icons.arrow_upward),
//                       AccountActions(
//                           label: "Withdraw", icon: Icons.arrow_downward),
//                       AccountActions(
//                           label: "Invest", icon: Icons.money),
//                       AccountActions(
//                           label: "Top Up", icon: Icons.add)
//                     ],
//                   )
//                 ],
//               ),
//             ))
//       ],
//     );
//   }
// }
