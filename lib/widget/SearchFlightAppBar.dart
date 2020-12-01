import 'package:flight_booking_conceptual_app/component/AppBarIconButton.dart';
import 'package:flutter/material.dart';

class SearchFlightAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 60,
        left: 25,
        right: 25,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyContainer(
                icon: Icons.menu,
              ),
              Text(
                "Search Flights",
                style: Theme.of(context).textTheme.headline6,
              ),
              MyContainer(
                icon: Icons.alarm,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
