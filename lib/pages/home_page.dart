import 'package:fintechproject/widget/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../widget/bottom_navigation_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.8),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.transparent,
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.person_add_alt_1_outlined,
                              color: Color(0XFFEAEAEA),
                              size: 18,
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              "Invite",
                              style: TextStyle(
                                color: Color(0XFFEAEAEA),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: "medium",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200, top: 2),
                        child: Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white.withValues(alpha: 0.7),
                              width: 1,
                            ),
                          ),
                          child: const Icon(
                            Icons.notifications_none_rounded,
                            color: Color(0XFFEAEAEA),
                            size: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white.withValues(alpha: 0.7),
                              width: 1,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black.withValues(alpha: 0.7),
                                // ⚪ inner white border
                                width: 2,
                              ),
                            ),
                            child: const CircleAvatar(
                              radius: 19,
                              backgroundImage: AssetImage(
                                'assets/image/profile.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      UiHelper.CustomText(
                        text: "Total balance",
                        color: const Color(0XFFEAEAEA),
                        fontsize: 14,
                        fontweight: FontWeight.w400,
                        fontfamily: "regular",
                      ),
                      const SizedBox(width: 8),
                      UiHelper.CustomText(
                        text: "·  All time",
                        color: Color(0xFF9C9C9C),
                        fontweight: FontWeight.w400,
                        fontsize: 14,
                        fontfamily: "regular",
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
                        text: "35,980.00",
                        color: Color(0XFFEAEAEA),
                        fontsize: 50,
                        fontweight: FontWeight.normal,
                        fontfamily: "regular",
                      ),
                    ],
                  ),
                ),
                // 🔹 Chart Section
                const SizedBox(height: 10),
                SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: LineChart(
                    LineChartData(
                      minX: 0,
                      maxX: 89,
                      minY: 5000,
                      maxY: 42000,
                      gridData: const FlGridData(show: false),
                      titlesData: const FlTitlesData(show: false),
                      borderData: FlBorderData(show: false),
                      lineTouchData: const LineTouchData(enabled: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: const [
                            FlSpot(0, 15000),
                            FlSpot(1, 16200),
                            FlSpot(2, 14800),
                            FlSpot(6, 16900),
                            FlSpot(7, 19500),
                            FlSpot(8, 17800),
                            FlSpot(9, 20200),
                            FlSpot(10, 18900),
                            FlSpot(11, 21800),
                            FlSpot(12, 20200),
                            FlSpot(17, 26100),
                            FlSpot(18, 24500),
                            FlSpot(19, 27500),
                            FlSpot(20, 25200),
                            FlSpot(21, 23800),
                            FlSpot(22, 21500),
                            FlSpot(23, 19200),
                            FlSpot(28, 11800),
                            FlSpot(29, 10500),
                            FlSpot(30, 12200),
                            FlSpot(31, 11100),
                            FlSpot(32, 13500),
                            FlSpot(33, 12800),
                            FlSpot(34, 14900),
                            FlSpot(38, 17500),
                            FlSpot(39, 16100),
                            FlSpot(40, 18800),
                            FlSpot(41, 17200),
                            FlSpot(42, 20100),
                            FlSpot(46, 22800),
                            FlSpot(47, 21500),
                            FlSpot(48, 24200),
                            FlSpot(49, 22900),
                            FlSpot(50, 25800),
                            FlSpot(51, 24200),
                            FlSpot(52, 27500),
                            FlSpot(53, 26100),
                            FlSpot(57, 29200),
                            FlSpot(58, 32500),
                            FlSpot(59, 31100),
                            FlSpot(60, 29800),
                            FlSpot(61, 28200),
                            FlSpot(62, 30100),
                            FlSpot(66, 32800),
                            FlSpot(67, 31200),
                            FlSpot(68, 33900),
                            FlSpot(69, 32500),
                            FlSpot(70, 34800),
                            FlSpot(71, 33200),
                            FlSpot(72, 35900),
                            FlSpot(76, 38500),
                            FlSpot(77, 37100),
                            FlSpot(78, 39800),
                            FlSpot(79, 38200),
                            FlSpot(80, 40200),
                            FlSpot(81, 38900),
                            FlSpot(82, 40800),
                            FlSpot(86, 38200),
                            FlSpot(87, 37100),
                            FlSpot(88, 36500),
                            FlSpot(89, 35980),
                          ],
                          isCurved: false,
                          color: const Color(0xFFB9B0DC),
                          barWidth: 2.5,
                          dotData: const FlDotData(show: false),
                          belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFB8AFDB).withValues(alpha: 0.5),
                                const Color(0xFFB8AFDB).withValues(alpha: 0.5),
                                const Color(0xFF32303A).withValues(alpha: 0.1),
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
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16,),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 160, // ✅ fixed height for both cards
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 25,
                                  vertical: 16,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF302F32), // dark background
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2),
                                      child: const Text(
                                        "Cash",
                                        style: TextStyle(
                                          color: Color(0XFFEAEAEA),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 35),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 11,
                                          vertical: 3,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFB9E7AE),
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: const Text(
                                          "+0.8%",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child: const Text(
                                            "\$ 11,250.00",
                                            style: TextStyle(
                                              color: Color(0XFFEAEAEA),
                                              fontSize: 22,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                height: 160, // ✅ same fixed height
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 25,
                                  vertical: 16,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF302F32),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2),
                                      child: const Text(
                                        "Investments",
                                        style: TextStyle(
                                          color: Color(0XFFEAEAEA),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 39),
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 11,
                                              vertical: 3,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Color(0xFFB9E7AE),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            child: const Text(
                                              "+1.2%",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child: const Text(
                                            "\$ 21,231.00",
                                            style: TextStyle(
                                              color: Color(0XFFEAEAEA),
                                              fontSize: 22,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 130,
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Color(0xffddedce).withValues(alpha: 0.35),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFC6E0AE),
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5, bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 16,
                                  child: UiHelper.CustomSvg(
                                    svgPath: "assets/svg/Group5.svg",
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 130),
                                  child: UiHelper.CustomText(
                                    text: "CashPilot AI forecast",
                                    color: Color(0XFF24431D),
                                    fontsize: 15,
                                    fontweight: FontWeight.w600,
                                    fontfamily: "bold",
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.close,
                                      size: 20,
                                      color: Color(0XFF24431D),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                UiHelper.CustomText(
                                  text: "How soon can you\nbuy a house?",
                                  color: Colors.black,
                                  fontsize: 21,
                                  fontweight: FontWeight.bold,
                                  fontfamily: "bold",
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 18,
                                      vertical: 10,
                                    ),
                                  ),
                                  child: UiHelper.CustomText(
                                    text: "Find out",
                                    color: Colors.black,
                                    fontsize: 14,
                                    fontweight: FontWeight.w600,
                                    fontfamily: "bold",
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
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 19,
                  ),
                  child: Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF302F32),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 25),
                          child: const Text(
                            "Goals",
                            style: TextStyle(
                              color: Color(0XFFEAEAEA),
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              fontFamily: "bold"
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationItem(),
    );
  }
}
