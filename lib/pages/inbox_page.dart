import 'package:fintechproject/widget/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF101010),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 10),
                          const Text(
                            "Santander",
                            style: TextStyle(
                              color: Color(0XFFEAEAEA),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: "medium",
                            ),
                          ),
                          Icon(
                            Icons.expand_more,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 2),
                        child: Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white.withValues(alpha: 0.7),
                              width: 1,
                            ),
                          ),
                          child: const Icon(
                            Icons.tune,
                            color: Color(0XFFEAEAEA),
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 3),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UiHelper.CustomSvg(
                        svgPath: "assets/svg/dollar.svg",
                        height: 40,
                        color: Color(0XFFEAEAEA),
                      ),
                      const SizedBox(width: 5),
                      UiHelper.CustomText(
                        text: "21,321.00",
                        color: Color(0XFFEAEAEA),
                        fontsize: 50,
                        fontweight: FontWeight.normal,
                        fontfamily: "regular",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 22),

                // Line Chart
                SizedBox(
                  height: 200,
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(show: false),
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: const [
                            FlSpot(0, 4.4),
                            FlSpot(1, 4.2),
                            FlSpot(2, 4.3),
                            FlSpot(3, 4.2),
                            FlSpot(4, 4.4),
                            FlSpot(5, 4.1),
                            FlSpot(6, 4.2),
                            FlSpot(7, 4.2),
                            FlSpot(8, 4.4),
                            FlSpot(9, 4.3),
                            FlSpot(10, 4.5),
                            FlSpot(11, 4.2),
                            FlSpot(12, 4.3),
                            FlSpot(13, 4.4),
                            FlSpot(14, 4.3),
                            FlSpot(15, 4.4),
                            FlSpot(16, 4.5),
                            FlSpot(17, 4.5),
                            FlSpot(18, 4.8),
                            FlSpot(19, 4.6),
                            FlSpot(20, 4.4),
                            FlSpot(21, 4.3),
                            FlSpot(22, 4.5),
                          ],
                          isCurved: false,
                          color: const Color(0xFFB9B0DC),
                          barWidth: 2.5,
                          dotData: const FlDotData(show: false),
                          belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFB8AFDB).withValues(alpha: 0.3),
                                const Color(0xFFB8AFDB).withValues(alpha: 0.3),
                                const Color(0xFFB8AFDB).withValues(alpha: 0.0),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: const [0.0, 0.6, 1.0],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _ChartLabel(text: "1D"),
                    _ChartLabel(text: "1W"),
                    _ChartLabel(text: "1M"),
                    _ChartLabel(text: "YTD"),
                    _ChartLabel(text: "MAX", selected: true),
                  ],
                ),
                SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Container(
                    height: 70,
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Color(0xFFC6E0AE).withValues(alpha: 0.35),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFC6E0AE),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 0, bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 16,
                                  child: UiHelper.CustomSvg(
                                    svgPath: "assets/svg/Group5.svg",
                                  ),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: UiHelper.CustomText(
                                    text: "Risk to savings",
                                    color: Color(0XFF24431D),
                                    fontsize: 18,
                                    fontweight: FontWeight.w600,
                                    fontfamily: "bold",
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "2",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.expand_more,
                                      size: 20,
                                      color: Color(0XFF24431D),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 21),

                // Tab Buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Container(
                    height: 47,
                    decoration: BoxDecoration(
                      color: const Color(0xFF302F32),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        _TabButton(text: "Categories", selected: true),
                        _TabButton(text: "Tags"),
                        _TabButton(text: "List"),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Category List
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    children: const [
                      _CategoryItem(
                        icon: Icons.shopping_bag_outlined,
                        title: "Shopping",
                        transactions: "46 transactions",
                        amount: "-\$8,125.00",
                        percent: "42%",
                      ),
                      _CategoryItem(
                        icon: Icons.home_repair_service_outlined,
                        title: "Service",
                        transactions: "38 transactions",
                        amount: "-\$4,841.12",
                        percent: "19%",
                      ),
                      _CategoryItem(
                        icon: Icons.videogame_asset_outlined,
                        title: "Entertainment",
                        transactions: "26 transactions",
                        amount: "-\$1,524.00",
                        percent: "14%",
                      ),
                      _CategoryItem(
                        icon: Icons.swap_horiz,
                        title: "Transfers",
                        transactions: "18 transactions",
                        amount: "-\$614.76",
                        percent: "9%",
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Chart Label
class _ChartLabel extends StatelessWidget {
  final String text;
  final bool selected;

  const _ChartLabel({required this.text, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        border: selected ? Border.all(color: Colors.white, width: 1) : null,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: selected ? Colors.white : Colors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

// Tab Button
class _TabButton extends StatelessWidget {
  final String text;
  final bool selected;
  const _TabButton({required this.text, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFC3A8FF) : Colors.transparent,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: selected ? Colors.black : Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 13,
        ),
      ),
    );
  }
}

// Category Item
class _CategoryItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String transactions;
  final String amount;
  final String percent;

  const _CategoryItem({
    required this.icon,
    required this.title,
    required this.transactions,
    required this.amount,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              color: const Color(0xFF302F32),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                Text(
                  transactions,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                amount,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              Text(
                percent,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}