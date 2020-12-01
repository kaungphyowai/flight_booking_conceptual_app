import 'package:flight_booking_conceptual_app/widget/SearchFlightAppBar.dart';
import 'package:flight_booking_conceptual_app/widget/SearchFlightBody.dart';
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
