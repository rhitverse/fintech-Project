import 'package:flutter/material.dart';
import '../widget/ui_helper.dart';
import 'house_page.dart';

class GoalPage extends StatelessWidget {
  const GoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101010),
      appBar: AppBar(
        backgroundColor: const Color(0xFF101010),
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0XFFE8E9E6)),
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                "Back",
                style: TextStyle(
                  color: Color(0XFFE8E9E6),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, top: 14),
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: const Icon(Icons.add, color: Colors.grey, size: 32),
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
                  padding: const EdgeInsets.only(left: 10, right: 20, top: 0),
                  child: RichText(
                    text: const TextSpan(
                      text: 'You have 3\n',
                      style: TextStyle(
                        color: Color(0XFFEAE9E5),
                        fontSize: 48,
                        fontWeight: FontWeight.w500,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'long-term goals',
                          style: TextStyle(
                            color: Color(0XFFEAE9E5),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: const Text(
                    "Long-term goals focus on empowering users\nto achieve financial independence through\nautomated and personalized planning.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 23),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    height: 205,
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Color(0xFFC6E0AE).withValues(alpha: 0.35),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFB8AFDB),
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 5,
                              bottom: 8,
                              top: 3,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 16,
                                  child: UiHelper.CustomSvg(
                                    svgPath: "assets/svg/Group5.svg",
                                    color: Color(0xff211552),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 140),
                                  child: UiHelper.CustomText(
                                    text: "You're nailing it!",
                                    color: Color(0xff211552),
                                    fontsize: 19,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              UiHelper.CustomText(
                                text:
                                "we've analyzed your savings and it looks like\nyou'll reach your goal by age 57.",
                                color: Colors.black,
                                fontsize: 15,
                                fontweight: FontWeight.w500,
                                fontfamily: "regular",
                              ),
                            ],
                          ),
                          const SizedBox(height: 19),
                          Container(
                            height: 67,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white60.withValues(alpha: 0.4),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 62),
                              child: Container(
                                height: 67,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: UiHelper.CustomText(
                                        text: "32",
                                        color: Colors.black,
                                        fontsize: 16,
                                        fontweight: FontWeight.w600,
                                        fontfamily: "bold",
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 70),
                                      child: UiHelper.CustomText(
                                        text: "age 57",
                                        color: Colors.black,
                                        fontsize: 24,
                                        fontweight: FontWeight.w700,
                                        fontfamily: "bold",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF302F32),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // 🏠 Image container
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xffC7D1DB),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              "assets/image/home.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(width: 21),
                          Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Buy a house",
                                      style: TextStyle(
                                        color: Color(0XFFEAE9E5),
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: RichText(
                                        text: const TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "Individual",
                                              style: TextStyle(
                                                color: Color(0XFFEAE9E5),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: " · Real Estate",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 105),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HousePage(),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                    size: 20,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
