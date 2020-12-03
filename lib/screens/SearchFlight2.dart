import 'package:flight_booking_conceptual_app/widget/SearchFlightAppBar.dart';
import 'package:flight_booking_conceptual_app/widget/SearchFlightBody.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SearchFlight2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyAppBar(
              icon1Navigator: 1,
              icon1: Icons.menu,
              icon2: Icons.alarm,
              title: "Search Flights",
            ),
            Lottie.asset(
              'assets/plane.json',
            ),
            SizedBox(
              height: 10,
            ),
            SearchFlightBody(),
          ],
        ),
      ),
    );
  }
}
