import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBox extends StatelessWidget {
  const GlassBox({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: SizedBox(
        height: kBottomNavigationBarHeight,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // blur effect
            // backdropfilter is applied to the whole screen
            // by using ClipRect, we can limit the area of appliance
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 3,
                sigmaY: 3,
              ),
              child: Container(),
            ),
    
            // gradient effect
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.5),
                    Colors.white.withOpacity(0.1),
                  ],
                ),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
