import 'package:flutter/material.dart';
import 'package:projetgelo/pages/constants.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
   MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: kPrimaryColor,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.add,
            text: 'Add',
          ),
          GButton(
            icon: Icons.list_alt_rounded,
            text: 'Consult',
          ),
          GButton(
            icon: Icons.class_outlined,
            text: 'Schedule',
          ),
          GButton(
            icon: Icons.request_quote_rounded,
            text: 'Request',
          )
        ], 
      ),
    );
  }
}