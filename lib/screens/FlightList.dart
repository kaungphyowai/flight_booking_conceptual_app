import 'package:flight_booking_conceptual_app/iconClass/filtre_icons.dart';
import 'package:flight_booking_conceptual_app/iconClass/fly_plane_icons.dart';
import 'package:flight_booking_conceptual_app/screens/SearchFlight.dart';
import 'package:flight_booking_conceptual_app/widget/SearchFlightAppBar.dart';
import 'package:flutter/material.dart';
import '../data/data.dart';
import 'BookingConfirmend.dart';

class FlightList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView.builder(
        itemCount: flightList.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return MyAppBar(
              icon1: Icons.arrow_back,
              icon2: Filtre.icon_feather_filter,
              title: "SYD to DEL  ",
            );
          } else {
            Flight flight = flightList[index - 1];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BookingConfirmed(flight: flight);
                    },
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xffF6F9FF),
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: Color(0x0f140B2B),
                      blurRadius: 10,
                    ),
                    BoxShadow(
                      offset: Offset(-10, -10),
                      color: Color(0xffFFFFFF),
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Info(flight: flight),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 30,
                        bottom: 20,
                      ),
                      child: Divider(
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    LogoAndPrice(flight: flight),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

class LogoAndPrice extends StatelessWidget {
  final Flight flight;
  LogoAndPrice({this.flight});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image(
              image: AssetImage(flight.logo),
            ),
            Text(
              "  ${flight.id.toString()}",
              style: Theme.of(context).textTheme.caption.copyWith(
                    color: Colors.black87,
                  ),
            ),
          ],
        ),
        Text(
          "\$ ${flight.price}",
          style: Theme.of(context).textTheme.headline6,
        )
      ],
    );
  }
}

class Info extends StatelessWidget {
  const Info({
    Key key,
    @required this.flight,
  }) : super(key: key);

  final Flight flight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              "${flight.fromCity},   ${flight.takeoffday}",
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontWeight: FontWeight.w700,
                    inherit: true,
                  ),
            ),
            Text(
              flight.takeoffHour,
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 17,
                    color: Color(0xff1E2432),
                  ),
            )
          ],
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '28h 35m',
                  style: Theme.of(context).textTheme.caption.copyWith(
                        color: Colors.black,
                      ),
                ),
                Text(
                  "   ${flight.stopNo} STOP",
                  style: Theme.of(context).textTheme.caption.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                )
              ],
            )
          ],
        ),
        Column(
          children: [
            Text(
              "${flight.toCity}, ${flight.landingday}",
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontWeight: FontWeight.w700,
                    inherit: true,
                  ),
            ),
            Text(
              flight.landingHour,
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 17,
                    color: Color(0xff1E2432),
                  ),
            )
          ],
        ),
      ],
    );
  }
}
