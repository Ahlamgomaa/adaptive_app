import 'package:adaptapp/widgets/custom_item2.dart';
import 'package:flutter/material.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(top: 16),
          child: CustomItem2(),
        );
      },
    );
  }
}
