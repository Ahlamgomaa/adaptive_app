import 'package:adaptapp/widgets/custom_silver_grid.dart';
import 'package:adaptapp/widgets/custom_silver_list.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        CustomSliverGrid(),
        CustomSliverList(),
      ],
    );
  }
}
