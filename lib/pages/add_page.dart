import 'package:fintechproject/widget/ui_helper.dart';
import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 80, top: 8),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_back_ios, color: Color(0XFFEAEAEA)),
                          Text(
                            "Back",
                            style: TextStyle(
                              color: Color(0XFFEAEAEA),
                              fontSize: 15,
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
