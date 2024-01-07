import 'package:flutter/material.dart';

class TravelDrawer extends StatelessWidget {
  const TravelDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[500],
      child: Column(
        children: [
          const SizedBox(
            height: 300,
            child: Center(
              child: Icon(
                Icons.explore,
                size: 165,
                color: Color.fromRGBO(53, 78, 113, 1),
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              Icons.terrain,
              size: 55,
              color: Color.fromRGBO(53, 78, 113, 1),
            ),
            title: const Text(
              "MOUNTAINS",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              Icons.waves,
              size: 55,
              color: Color.fromRGBO(53, 78, 113, 1),
            ),
            title: const Text(
              "OCEAN",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              Icons.park,
              size: 55,
              color: Color.fromRGBO(53, 78, 113, 1),
            ),
            title: const Text(
              "FOREST",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
