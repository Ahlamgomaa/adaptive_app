import 'package:adaptapp/widgets/custom_item.dart';
import 'package:adaptapp/widgets/custom_item2.dart';

import 'package:flutter/material.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 2,
          child: CustomItem(),
        ),
        // CustomItem(
        //   color: Color(0xFFECECEC),
        // ),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: CustomItem2(),
        ),
      ],
    );
  }
}
