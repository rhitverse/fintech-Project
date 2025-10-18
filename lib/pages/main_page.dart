import 'package:flutter/material.dart';
import 'package:fintechproject/pages/home_page.dart';
import 'package:fintechproject/pages/add_page.dart';
import 'package:fintechproject/pages/search_page.dart';
import 'package:fintechproject/pages/swap_page.dart';
import 'package:fintechproject/pages/inbox_page.dart';
import '../widget/bottom_navigation_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 🔹 Default selected page: Home
  int selectedIndex = 0;

  // 🔹 Pages list in the same order as bottom nav icons
  final List<Widget> pages = [
    const HomeScreen(),
    const SearchPage(),
    const AddPage(),
    const InboxPage(),
    const SwapPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 🔹 Show current page
      body: pages[selectedIndex],

      // 🔹 Bottom Navigation
      bottomNavigationBar: BottomNavigationItem(
        selectedIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index; // 🔹 Page changes on tap
          });
        },
      ),
    );
  }
}
