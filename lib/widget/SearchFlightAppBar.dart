import 'package:flight_booking_conceptual_app/component/AppBarIconButton.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  final IconData icon1;
  final IconData icon2;
  MyAppBar({this.icon1, this.icon2, this.title});
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
                icon: icon1,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headline6,
              ),
              MyContainer(
                icon: icon2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
