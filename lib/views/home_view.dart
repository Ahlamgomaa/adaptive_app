import 'package:adaptapp/widgets/custom_drawer.dart';
import 'package:adaptapp/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xFFDBDBDB),
      appBar: buildAppBar(context),
      body: const HomeViewBody(),
    );
  }

  AppBar? buildAppBar(BuildContext context) {
    return MediaQuery.sizeOf(context).width-32 < 900
        ? AppBar(
            elevation: 2,
            backgroundColor: Colors.black,
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            leading: GestureDetector(
              onTap: () {
                scaffoldState.currentState!.openDrawer();
              },
              child: const Icon(
                Icons.menu,
                size: 30,
              ),
            ),
          )
        : null;
  }
}
