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
      body: Column(
        children: [
          SearchFlightAppBar(),
          Image(
            image: AssetImage('assets/plane.png'),
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            height: 10,
          ),
          SearchFlightBody(),
        ],
      ),
    );
  }
}
