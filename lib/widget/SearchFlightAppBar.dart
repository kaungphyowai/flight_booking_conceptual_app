import 'package:flight_booking_conceptual_app/component/AppBarIconButton.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  final String title;
  final IconData icon1;
  final icon1Navigator;
  final IconData icon2;
  MyAppBar({this.icon1, this.icon2, this.title, this.icon1Navigator = 0});

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
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
              GestureDetector(
                onTap: () {
                  if (widget.icon1Navigator == 0) {
                    return Navigator.pop(context);
                  }
                },
                child: MyContainer(
                  icon: widget.icon1,
                ),
              ),
              Text(
                widget.title,
                style: Theme.of(context).textTheme.headline6,
              ),
              MyContainer(
                icon: widget.icon2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
