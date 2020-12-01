import 'package:flight_booking_conceptual_app/component/MyCustomClipper.dart';
import 'package:flight_booking_conceptual_app/component/RoundedButton.dart';
import 'package:flight_booking_conceptual_app/iconClass/take_off_icons.dart';
import 'package:flight_booking_conceptual_app/iconClass/two__arrows_icons.dart';
import 'package:flutter/material.dart';
import '../iconClass/arrow__forward_icons.dart';

class SearchFlightBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 25,
        right: 25,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundButton(
                icon: Arrow_Forward.icon_ionic_md_arrow_round_back,
                title: "ONE WAY",
                iconSize: 10,
              ),
              RoundButton(
                icon: Two_Arrows.group_73,
                title: "ROUND TRIP",
                iconSize: 16,
              ),
            ],
          ),
          ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                vertical: 35,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                  color: Color(0xff000000),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 15,
                    ),
                    child: Icon(
                      TakeOff.take_off,
                      size: 30,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      bottom: 5,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'FORM',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Sydney, Austraila',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
