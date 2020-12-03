import 'package:flight_booking_conceptual_app/component/MyCustomClipper.dart';
import 'package:flight_booking_conceptual_app/component/TicketClipper.dart';
import 'package:flight_booking_conceptual_app/data/data.dart';
import 'package:flight_booking_conceptual_app/screens/FlightList.dart';
import 'package:flight_booking_conceptual_app/widget/FromToCity.dart';
import 'package:flight_booking_conceptual_app/widget/SearchFlightAppBar.dart';
import 'package:flight_booking_conceptual_app/widget/Ticket.dart';
import 'package:flutter/material.dart';

class BookingConfirmed extends StatelessWidget {
  final Flight flight;
  BookingConfirmed({this.flight});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          MyAppBar(
            icon1: Icons.arrow_back,
            icon2: Icons.share,
            title: "Booking Confirmned",
          ),
          Column(
            children: [
              FromToCity(flight: flight),

              Ticket(flight: flight),

              // ClipPath(
              //   clipper: TicketClipper(),
              //   child: Container(
              //     height: 100,
              //     margin: EdgeInsets.only(
              //       left: 25,
              //       right: 25,
              //     ),
              //     width: double.infinity,
              //     color: Colors.red,
              //   ),
              // )
              ClipPath(
                clipper: TicketClipper(),
                child: Container(
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
                  margin: EdgeInsets.only(
                    left: 25,
                    right: 25,
                  ),
                  height: 100,
                  width: double.infinity,
                  child: Center(
                      child: MySeparator(
                    color: Colors.black,
                  )),
                ),
              ),
              Container(
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
                margin: EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                height: 150,
                width: double.infinity,
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(
                        'assets/barcode.png',
                      ),
                    ),
                    Text(
                      'A5S8F510GT8D1C 9D6D5G5D6',
                      style: Theme.of(context).textTheme.caption.copyWith(
                            fontSize: 15,
                            letterSpacing: 2,
                          ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MySeparator extends StatelessWidget {
  final double height;
  final Color color;

  const MySeparator({this.height = 1, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
