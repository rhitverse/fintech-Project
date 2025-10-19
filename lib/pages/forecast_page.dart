import 'package:flutter/material.dart';
import 'package:fintechproject/widget/ui_helper.dart';

class ForecastPage extends StatelessWidget {
  const ForecastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101010),
      appBar: AppBar(
        backgroundColor: const Color(0xFF101010),
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0XFFE8E9E6)),
        titleSpacing: 0,
        title: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Back",
                  style: TextStyle(
                    color: Color(0XFFE8E9E6),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40.0, top: 10),
              child: Align(
                alignment: Alignment.center,
                child: UiHelper.CustomSvg(
                  svgPath: 'assets/svg/Group5.svg',
                  height: 22,
                  width: 22,
                  color: Color(0xFFB9E7AE),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20, top: 8),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Buying your\n',
                      style: TextStyle(
                        color: Color(0XFFEAEAEA),
                        fontSize: 45,
                        fontWeight: FontWeight.w500,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'own house',
                          style: TextStyle(
                            color: Color(0xFFB9E7AE),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: const Text(
                    "CashPilot helps you calculate the cost of\nbuying a house through its CashHome\nplanning tool, which integrates various\npersonal financial parameters and external\ndata to project affordability.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5,left: 10),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Color(0xFFB9E7AE),
                          shape: BoxShape.circle,
                        ),
                        child: const Text(
                          "1",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Current Financial Standing",
                      style: TextStyle(
                        color: Color(0XFFEAEAEA),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 15,right: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 160,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 25,
                                vertical: 16,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0XFFB8AFDB),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: const Text(
                                      "Current net worth",
                                      style: TextStyle(
                                        color: Color(0XFF120F16),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
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
                                            color: Color(0XFF120F16),
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
                              height: 160,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
