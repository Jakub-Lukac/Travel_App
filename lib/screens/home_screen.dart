import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/screens/preview_ocean_screen.dart';
import 'package:travel_app/screens/preview_mountain_screen.dart';
import 'package:travel_app/screens/preview_forest_screen.dart';

import '../widgets/custom_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentScreenIndex = 0;

  final PageController _pageController = PageController();

  /*final List<String> imagePaths = [
    'assets/images/mountain.jpg',
    'assets/images/ocean.jpg',
    'assets/images/forest.jpg',
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    for (var path in imagePaths) {
      precacheImage(AssetImage(path), context);
    }
  }*/

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
             onPageChanged: (index) {
              setState(() {
                _currentScreenIndex = index;
              });
            },
            children: const [
              PreviewMountainScreen(),
              PreviewOceanScreen(),
              PreviewForestScreen(),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomBottomBar(
              indexOfScreen: _currentScreenIndex,
              onPageChanged: (index) {
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
