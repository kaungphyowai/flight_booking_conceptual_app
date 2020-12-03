import 'package:flight_booking_conceptual_app/component/InfoColumn.dart';
import 'package:flight_booking_conceptual_app/data/data.dart';
import 'package:flutter/material.dart';

class InfoColumns extends StatelessWidget {
  const InfoColumns({
    Key key,
    @required this.flight,
  }) : super(key: key);

  final Flight flight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InfoColumn(
          firstCaption: "FLIGHT NO.",
          secondCaption: "DATE",
          firstInfo: flight.id,
          secondInfo: flight.takeoffdate,
        ),
        InfoColumn(
          firstCaption: "CLASS",
          secondCaption: "TIME",
          firstInfo: flight.flightclass,
          secondInfo: flight.takeoffHour,
        ),
        InfoColumn(
          firstCaption: "TERMINAL",
          secondCaption: "SEAT",
          firstInfo: flight.terminal,
          secondInfo: flight.seat,
        ),
      ],
    );
  }
}
