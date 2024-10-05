import 'package:adaptapp/models/drawer_item_model.dart';
import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      leading: Icon(
        drawerItemModel.icon,
      ),
      title: Padding(
        padding: const EdgeInsets.only(
          left: 16,
        ),
        child: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(
            drawerItemModel.title,
          ),
        ),
      ),
    );
  }
}
