import 'package:adaptapp/models/drawer_item_model.dart';
import 'package:adaptapp/widgets/custom_drawer_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DrawerItemModel> items = [
    DrawerItemModel(
      title: 'D A S H B O R D',
      icon: Icons.home,
    ),
    DrawerItemModel(
      title: 'S E T T I N G S',
      icon: Icons.settings,
    ),
    DrawerItemModel(
      title: 'A B O U T',
      icon: Icons.info,
    ),
    DrawerItemModel(
      title: 'L O G O U T',
      icon: Icons.logout,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Color(0xFFDBDBDB),
      elevation: 0,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              FontAwesomeIcons.heart,
              size: 50,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomDrawerItemListView(
            items: items,
          ),
        ],
      ),
    );
  }
}
