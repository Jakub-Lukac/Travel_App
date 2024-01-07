import 'package:flutter/material.dart';
import 'package:travel_app/models/mountain.dart';
import 'package:travel_app/screens/detail_screen_mountain.dart';
import 'package:travel_app/widgets/item_card.dart';
import 'package:travel_app/widgets/travel_drawer.dart';

class MountainScreen extends StatefulWidget {
  const MountainScreen({super.key});

  @override
  State<MountainScreen> createState() => _MountainScreenState();
}

class _MountainScreenState extends State<MountainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: Continent.values.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/mountainScreen.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _title(),
            _tabBar(),
            _tabBarBody(),
          ],
        ),
      ),
      drawer: const TravelDrawer(),
    );
  }

  Expanded _tabBarBody() {
    return Expanded(
      child: TabBarView(
        controller: _tabController,
        children: Continent.values.map((continent) {
          List<Mountain> mountainsByContinent =
              Mountain.getMountainsByContinent(continent);
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: mountainsByContinent.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailScreenMountain(
                          mountain: mountainsByContinent[index],
                        );
                      },
                    ),
                  );
                },
                child: ItemCard(
                  mountain: mountainsByContinent[index],
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  TabBar _tabBar() {
    return TabBar(
      unselectedLabelColor: Colors.white.withOpacity(0.9),
      isScrollable: true,
      controller: _tabController,
      labelPadding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      indicatorWeight: 3,
      indicatorColor: const Color.fromRGBO(37, 230, 138, 1),
      tabs: Continent.values.map((continet) {
        return Tab(
          child: Text(
            continet.toName(),
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center,
          ),
        );
      }).toList(),
    );
  }

  Padding _title() {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.sizeOf(context).height / 4,
        left: 20,
        bottom: MediaQuery.sizeOf(context).height / 6.5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "MOUNTAINS",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 45,
              letterSpacing: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
            ),
            child: Text(
              "Explore locations.",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
