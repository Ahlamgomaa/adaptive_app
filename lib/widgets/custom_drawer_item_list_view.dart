
import 'package:adaptapp/models/drawer_item_model.dart';
import 'package:adaptapp/widgets/custom_dawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerItemListView extends StatelessWidget {
  const CustomDrawerItemListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics:const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomDrawerItem(
          drawerItemModel: items[index],
        );
      },
    );
  }
}