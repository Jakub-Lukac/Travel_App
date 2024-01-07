import 'package:flutter/material.dart';

class PreviewOceanScreen extends StatelessWidget {
  const PreviewOceanScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/beach.jpg",
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
                      "OCEAN",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Text(
                    "In the endless depths of the ocean, nature whispers tales through waves, revealing strength in every ripple.",
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
