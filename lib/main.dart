import 'package:flight_booking_conceptual_app/screens/FlightList.dart';
import 'package:flight_booking_conceptual_app/screens/SearchFlight.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'TT_Norms',
        primaryColor: Color(0xffF6F9FF),
        accentColor: Color(0xff0050A6),
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 20,
            color: Color(0xff0050A6),
            fontWeight: FontWeight.w700,
          ),
          caption: TextStyle(
            fontSize: 12,
            color: Color(0xff0050A6),
            fontWeight: FontWeight.w500,
          ),
          bodyText2: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
      home: SearchFlight(),
    ),
  );
}
