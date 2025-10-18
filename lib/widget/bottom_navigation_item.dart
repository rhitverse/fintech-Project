import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationItem extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const BottomNavigationItem({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  final List<String> navIcons = const [
    "assets/svg/ic_home.svg",
    "assets/svg/ic_search.svg",
    "assets/svg/Group5.svg", // middle icon
    "assets/svg/inbox.svg",
    "assets/svg/swap.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        color: Color(0xFF101010),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(navIcons.length, (index) {
          final iconPath = navIcons[index];
          final isSelected = index == selectedIndex;

          // 🔹 Special case for middle icon
          if (index == 2) {
            return GestureDetector(
              onTap: () => onTap(index),
              child: Container(
                height: 55,
                width: 55,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0XFFB8AFDB),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    iconPath,
                    height: 22,
                    width: 22,
                    colorFilter: const ColorFilter.mode(
                      Colors.black,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            );
          }

          // 🔹 Normal icons
          return GestureDetector(
            onTap: () => onTap(index),
            child: SvgPicture.asset(
              iconPath,
              height: 28,
              width: 28,
              colorFilter: ColorFilter.mode(
                isSelected
                    ? Colors.white
                    : Colors.grey.withValues(alpha: 0.35),
                BlendMode.srcIn,
              ),
            ),
          );
        }),
      ),
    );
  }
}
