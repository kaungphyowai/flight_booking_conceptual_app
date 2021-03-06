import 'package:flight_booking_conceptual_app/screens/FlightList.dart';
import 'package:flight_booking_conceptual_app/widget/CustomButton.dart';
import 'package:flight_booking_conceptual_app/widget/SearchFlightAppBar.dart';
import 'package:flight_booking_conceptual_app/widget/SearchFlightBody.dart';
import 'package:flutter/material.dart';

class SearchFlight extends StatefulWidget {
  @override
  _SearchFlightState createState() => _SearchFlightState();
}

class _SearchFlightState extends State<SearchFlight> {
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
            Image(
              image: AssetImage('assets/plane.png'),
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: 10,
            ),
            SearchFlightBody(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: CustomButton(
                title: "Search Flight",
                goto: FlightList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
