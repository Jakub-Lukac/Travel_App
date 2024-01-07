import 'package:flutter/material.dart';

class PreviewMountainScreen extends StatelessWidget {
  const PreviewMountainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/mountain.jpg",
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
                      "MOUNTAINS",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Text(
                    "In the mountains, nature unveils grandeur, painting rugged landscapes that echo the earth's resilience.",
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
