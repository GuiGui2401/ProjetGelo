import 'package:flutter/material.dart';
import 'package:projetgelo/components/bottom_nav_bar.dart';
import 'package:projetgelo/pages/add_page.dart';
import 'package:projetgelo/pages/description_page.dart';
import 'package:projetgelo/pages/favorite_screen.dart';
import 'package:projetgelo/pages/request_page.dart';
import 'package:projetgelo/pages/schedule_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentSelectedIndex = 0;

  void updateCurrentIndex(int index) {
    setState(() {
      currentSelectedIndex = index;
    });
  }

  final pages = [
    const DescriptionPage(),
    const AddPage(),
    const FavoriteScreen(),
    const SchedulePage(),
    const RequestPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentSelectedIndex],
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder( builder: (context) => IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),

        )
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            //logo
            DrawerHeader(
              child: Image.asset(
                'lib/image/img1.png',
                color: Colors.white,
              )
            )

            //other pages
          ],
          ),
      ),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => updateCurrentIndex(index),
      ),
    );
  }
}
