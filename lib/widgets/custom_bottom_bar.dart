import 'package:flutter/material.dart';
import 'package:travel_app/screens/mountain_screen.dart';
import 'package:travel_app/widgets/glass_box.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar(
      {super.key, this.indexOfScreen = 0, required this.onPageChanged});
  final int indexOfScreen;
  final Function(int) onPageChanged;

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const MountainScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 700),
    );
  }

  void _onIndexChanged(int indexOfPage) {
    if (indexOfPage != 2) {
      widget.onPageChanged(widget.indexOfScreen + 1);
    } else {
      Navigator.of(context).pushReplacement(
        _createRoute(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GlassBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 5.0,
                    backgroundColor: widget.indexOfScreen == index
                        ? Colors.white
                        : Colors.grey,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () => _onIndexChanged(widget.indexOfScreen),
              child: Text(
                widget.indexOfScreen != 2 ? "NEXT" : "EXPLORE",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
