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
            // Left-aligned "Back" text
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
            // Centered SVG
            Padding(
              padding: const EdgeInsets.only(right: 40.0,top: 10),
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
      body: RichText(
        text: TextSpan(
          text: 'Buying your\n ',
          style: TextStyle(
            color: Color(0XFFEAEAEA),
            fontSize: 30,
            fontWeight: FontWeight.w500
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'own house',
              style: TextStyle(
                color: Color(0xFFB9E7AE), // 👈 second color
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      )

    );
  }
}

