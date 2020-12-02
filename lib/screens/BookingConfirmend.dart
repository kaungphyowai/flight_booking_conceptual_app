import 'package:flight_booking_conceptual_app/data/data.dart';
import 'package:flutter/material.dart';

class BookingConfirmed extends StatelessWidget {
  final Flight flight;
  BookingConfirmed({this.flight});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage(flight.logo),
        ),
      ),
    );
  }
}
