import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:studentdm/bar_graph/bar_graph.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<double> weeklySumamary = [44.40, 22.50, 45.5, 65.5, 77.5, 45.5, 50.2];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const GNav(gap: 8, tabs: [
        GButton(
          icon: Icons.home,
          text: "Home",
        ),
        GButton(
          icon: Icons.favorite_border,
          text: 'Likes',
        ),
        GButton(
          icon: Icons.search,
          text: 'Likes',
        ),
        GButton(
          icon: Icons.settings,
          text: 'Settings',
        )
      ]),
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 200,
              height: 225,
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircularPercentIndicator(
                      animation: true,
                      radius: 80,
                      lineWidth: 15,
                      percent: 0.4,
                      progressColor: Colors.white,
                      backgroundColor: Colors.grey,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text(
                        "Attendance  40%",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    CircularPercentIndicator(
                      animation: true,
                      radius: 80,
                      lineWidth: 15,
                      percent: 0.4,
                      progressColor: Colors.white,
                      backgroundColor: Colors.grey,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text(
                        " Marks 40%",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 380,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BarGraph(
                    weeklySummary: weeklySumamary,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
