import 'package:flight_booking_conceptual_app/component/RoundedButton.dart';
import 'package:flight_booking_conceptual_app/iconClass/landing_icons.dart';
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
          SearchFlighContianer(
            caption: "FROM",
            text: "Sydney, Australia",
            icon: TakeOff.take_off,
          ),
          SearchFlighContianer(
            caption: "TO",
            text: 'New Delhi, India',
            icon: Landing.take_off,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SearchFlighContianer(
                  caption: "DEPARTURE",
                  text: '12 Feb, 2020',
                  icon: Landing.take_off,
                  rightmarign: 10,
                ),
              ),
              Expanded(
                child: SearchFlighContianer(
                  caption: "CLASS",
                  text: 'Business',
                  leftmargin: 10,
                  icon: Landing.take_off,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SearchFlighContianer(
                  caption: "TRAVELLERS",
                  rightmarign: 10,
                  text: '2 Adults',
                  icon: Landing.take_off,
                ),
              ),
              Expanded(
                child: SearchFlighContianer(
                  caption: "BOOK A CAR",
                  text: 'In New Delhi',
                  icon: Landing.take_off,
                  leftmargin: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SearchFlighContianer extends StatelessWidget {
  final IconData icon;
  final String caption;
  final String text;
  final double rightmarign;
  final double leftmargin;
  const SearchFlighContianer({
    this.icon,
    this.caption,
    this.text,
    this.rightmarign = 0,
    this.leftmargin = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 35,
        right: rightmarign,
        left: leftmargin,
      ),
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(-10, -10),
              blurRadius: 15,
              color: Color(0xffFFFFFF)),
          BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 10,
            color: Color(0x0f140B2B),
          ),
        ],
        borderRadius: BorderRadius.circular(4),
        color: Color(0xffF6F9FF),
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
              icon,
              size: 30,
              color: Theme.of(context).accentColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 5, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  caption,
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '$text',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Container(
//   // base Conatiner
//   margin: EdgeInsets.only(
//     top: 35,
//   ),
//   decoration: BoxDecoration(
//     boxShadow: [
//       BoxShadow(
//           offset: Offset(-10, -10),
//           blurRadius: 15,
//           color: Color(0xffFFFFFF)),
//     ],
//     borderRadius: BorderRadius.circular(4),
//     color: Color(0xffF6F9FF),
//   ),
//   child: ClipPath(
//     clipper: MyCustomClipper(),
//     child: Container(
//       //Subtraction Container
//       decoration: BoxDecoration(
//           // color: Color(0xffF6F9FF),
//           color: Colors.red,
//           border: Border.all(
//             color: Color(0x00000000),
//           ),
//           boxShadow: [
//             BoxShadow(
//               offset: Offset(0, 5),
//               blurRadius: 10,
//               color: Color(0x0f140B2B),
//             ),
//           ]),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(
//               vertical: 15,
//               horizontal: 15,
//             ),
//             child: Icon(
//               TakeOff.take_off,
//               size: 30,
//               color: Theme.of(context).accentColor,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(
//               top: 15,
//               bottom: 5,
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'FORM',
//                   style: Theme.of(context).textTheme.caption,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   'Sydney, Austraila',
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     ),
//   ),
// ),
