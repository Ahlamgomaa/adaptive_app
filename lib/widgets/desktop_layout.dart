import 'package:adaptapp/widgets/custom_desktop_widget.dart';
import 'package:adaptapp/widgets/custom_drawer.dart';
import 'package:adaptapp/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          // flex: 1,
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: TabletLayout(),
          ),
        ),
        // SizedBox(
        //   height: 10,
        // ),
        Expanded(
          // flex: 1,
          child: Padding(
            padding: EdgeInsets.only(
              top: 16,
            ),
            child: CustomDesktopWidget(),
          ),
        ),
      ],
    );
  }
}
