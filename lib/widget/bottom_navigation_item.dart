import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationItem extends StatefulWidget {
  const BottomNavigationItem({super.key});

  @override
  State<BottomNavigationItem> createState() => _BottomNavigationItemState();
}

class _BottomNavigationItemState extends State<BottomNavigationItem> {
  int selectedIndex = 0;

  // 🔹 Your SVG icon paths
  final List<String> navIcons = [
    "assets/svg/ic_home.svg",
    "assets/svg/ic_search.svg",
    "assets/svg/Group5.svg",
    "assets/svg/inbox.svg",
    "assets/svg/swap.svg"

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        color: Color(0xFF1A1A1F),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          navIcons.length,
              (index) {
            final iconPath = navIcons[index];
            final isSelected = index == selectedIndex;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: SvgPicture.asset(
                iconPath,
                height: 30, // 👈 fixed size to avoid overflow
                width: 15,
                colorFilter: ColorFilter.mode(
                  isSelected ? Colors.white : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

