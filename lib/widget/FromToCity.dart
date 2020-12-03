import 'package:flight_booking_conceptual_app/data/data.dart';
import 'package:flight_booking_conceptual_app/iconClass/fly_plane_icons.dart';
import 'package:flutter/material.dart';

class FromToCity extends StatelessWidget {
  final Flight flight;

  FromToCity({this.flight});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50, right: 50, top: 50),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "SYD",
            style: Theme.of(context).textTheme.headline6,
          ),
          Column(
            children: [
              Icon(
                FlyPlane.path_99,
                color: Theme.of(context).accentColor,
              ),
              Row(
                children: [
                  Icon(
                    Icons.radio_button_unchecked,
                    color: Theme.of(context).accentColor,
                    size: 10,
                  ),
                  Text(
                    '---------------------',
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  Icon(
                    Icons.radio_button_unchecked,
                    color: Theme.of(context).accentColor,
                    size: 10,
                  ),
                ],
              ),
            ],
          ),
          Text(
            "DEL",
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
