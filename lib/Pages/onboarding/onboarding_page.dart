import 'dart:math';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:natcorp/Pages/login/login_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late LiquidController liquidController;
  int currentIndex = 0;

  final List<Map<String, dynamic>> splashData = [
    {
      "title": "TEMPORARY STAFFING",
      "subtitle":
          "Development of qualified people in various functions \non contractual basis designed to\n augment increase in personnel requirement\n for the short term.",
      "image": "assets/boarding1.png",
      "color": const Color(0xFF8CC6FB)
    },
    {
      "title": "TEMPORARY STAFFING",
      "subtitle":
          "Development of qualified people in various functions \non contractual basis designed to\n augment increase in personnel requirement\n for the short term.",
      "image": "assets/boarding2.png",
      "color": const Color(0xFF5F939A)
    },
    {
      "title": "TEMPORARY STAFFING",
      "subtitle":
          "Development of qualified people in various functions \non contractual basis designed to\n augment increase in personnel requirement\n for the short term.",
      "image": "assets/boarding3.png",
      "color": const Color(0xFFDA6386),
    },
  ];
  @override
  void initState() {
    liquidController = LiquidController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe.builder(
            itemCount: splashData.length,
            itemBuilder: (context, index) {
              return getOnBoardingScreen(index);
            },
            positionSlideIcon: 0.8,
            onPageChangeCallback: pageChangeCallBack,
            waveType: WaveType.circularReveal,
            liquidController: liquidController,
            fullTransitionValue: 880,
            ignoreUserGestureWhileAnimating: true,
            enableLoop: true,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              const Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(splashData.length, _buildDot),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget getOnBoardingScreen(int index) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(splashData[index]['image']),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  splashData[index]['title'],
                  style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF075009),
                      fontFamily: "Billy",
                      fontSize: 23),
                ),
                const SizedBox(height: 10),
                Text(
                  splashData[index]['subtitle'],
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontFamily: "Billy",
                      fontSize: 14),
                ),
                const SizedBox(height: 20),
                ButtonTheme(
                  height: 50,
                  minWidth: 150,
                  child: OutlinedButton(
                    child: Text(
                      index != splashData.length - 1 ? 'Skip' : 'Get Started',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF075009),
                          fontFamily: "Billy",
                          fontSize: 14),
                    ),
                    onPressed: () {
                      index != splashData.length - 1
                          ? liquidController.jumpToPage(
                              page: splashData.length - 1)
                          : Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const //WelcomeScreen
                                      LoginScreen()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void pageChangeCallBack(int activePageIndex) {
    setState(() {
      currentIndex = activePageIndex;
    });
  }

  Widget _buildDot(int activePageIndex) {
    double selectedIndex = Curves.easeOut
        .transform(max(0.0, 1.0 - ((currentIndex) - activePageIndex).abs()));
    double zoom = 1.0 + (2.0 - 1.7) * selectedIndex;

    return SizedBox(
      width: 25,
      child: Center(
        child: Material(
          color: const Color(0x00ff5545),
          type: MaterialType.circle,
          child: SizedBox(
            width: 8.0 * zoom,
            height: 8.0 * zoom,
          ),
        ),
      ),
    );
  }
}
