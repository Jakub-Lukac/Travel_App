import 'package:flutter/material.dart';

import '../models/mountain.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.mountain});
  final Mountain mountain;

  final double radius = 8;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      child: Container(
        width: MediaQuery.sizeOf(context).width / 1.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radius),
                topRight: Radius.circular(radius),
              ),
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height / 3.5,
                child: Image.asset(
                  mountain.imagePath!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(radius),
                bottomRight: Radius.circular(radius),
              ),
              child: Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height / 11,
                color: Colors.grey[300],
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mountain.name!,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "${mountain.continent!.toName()}, ${mountain.country}",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
