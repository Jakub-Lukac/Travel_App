import 'package:flutter/material.dart';

class PreviewForestScreen extends StatelessWidget {
  const PreviewForestScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/forest.jpg",
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 100,
            left: 20,
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width / 1.2,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BEYOND THE",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: Text(
                      "FOREST",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Text(
                    "Through the towering trees, a road trip unfolds, a journey in the heart of the forest, where adventure meets tranquility.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
