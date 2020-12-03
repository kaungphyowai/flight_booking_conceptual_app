import 'package:flight_booking_conceptual_app/data/data.dart';
import 'package:flutter/material.dart';

import 'InfoColumns.dart';

class Ticket extends StatelessWidget {
  final Flight flight;
  Ticket({this.flight});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 25,
        right: 25,
      ),
      child: Container(
        height: 350,
        padding: EdgeInsets.all(30),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffF6F9FF),
          boxShadow: [
            BoxShadow(
              offset: Offset(-7, -9),
              blurRadius: 10,
              color: Color(0xffFFFFFF),
            ),
            BoxShadow(
              offset: Offset(5, 8),
              blurRadius: 18,
              color: Color(0x262D1F50),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [InfoColumns(flight: flight), Passengers()],
        ),
      ),
    );
  }
}

class Passengers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "PASSENGERS",
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontSize: 12,
              ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0, right: 12.0),
              child: Image(
                image: AssetImage(passengers[0].photo),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  passengers[0].name,
                  style: Theme.of(context).textTheme.caption.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                ),
                Text(
                  '${passengers[0].gender}, ${passengers[0].age} years',
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontSize: 12,
                      ),
                ),
              ],
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0, right: 12.0),
              child: Image(
                image: AssetImage(passengers[1].photo),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  passengers[1].name,
                  style: Theme.of(context).textTheme.caption.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                ),
                Text(
                  '${passengers[1].gender}, ${passengers[1].age} years',
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontSize: 12,
                      ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
