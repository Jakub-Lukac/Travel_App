import 'package:flutter/material.dart';

import '../models/mountain.dart';

class DetailScreenMountain extends StatelessWidget {
  const DetailScreenMountain({super.key, required this.mountain});
  final Mountain mountain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
          )
        ],
      ),
      body: SizedBox(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                mountain.imagePath!,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mountain.name!,
                        style: const TextStyle(
                          fontSize: 46,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${mountain.continent!.toName()}, ${mountain.country}",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[500]),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                elevation: 15,
                                shadowColor:
                                    const Color.fromRGBO(37, 230, 138, 1),
                                backgroundColor:
                                    const Color.fromRGBO(37, 230, 138, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(
                                  10,
                                ),
                                child: Text(
                                  "BOOK NOW",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.grey[300],
                child: Text(
                  mountain.description!,
                  style: const TextStyle(
                    fontSize: 26,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
