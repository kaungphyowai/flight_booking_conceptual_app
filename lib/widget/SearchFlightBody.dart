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
        crossAxisAlignment: CrossAxisAlignment.end,
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
          Container(
            // base Conatiner
            margin: EdgeInsets.only(
              top: 35,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(-10, -10),
                    blurRadius: 15,
                    color: Color(0xffFFFFFF)),
              ],
              borderRadius: BorderRadius.circular(4),
              color: Color(0xffF6F9FF),
            ),
            child: ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
                //Subtraction Container
                decoration: BoxDecoration(
                    // color: Color(0xffF6F9FF),
                    color: Colors.red,
                    border: Border.all(
                      color: Color(0x00000000),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        color: Color(0x0f140B2B),
                      ),
                    ]),
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
          ),
          // Container(
          //   margin: EdgeInsets.only(
          //     right: 25,
          //   ),
          //   transform: Matrix4.translationValues(-3.0, -20, 0.0),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(50),
          //     color: Colors.red,
          //   ),
          //   height: 50,
          //   width: 50,
          // ),
          // Container(
          //   height: 100,
          //   width: double.infinity,
          //   color: Colors.red,
          // )
        ],
      ),
    );
  }
}

// // Container(
// //             child: ClipPath(
// //               clipper: MyCustomClipper(),
// //               child: Container(
// //                 width: double.infinity,
// //                 margin: EdgeInsets.symmetric(
// //                   vertical: 35,
// //                 ),
// //                 decoration: BoxDecoration(
// //                     // color: Colors.red,
// //                     // color: Color(0xffF6F9FF),
// //                     borderRadius: BorderRadius.circular(4),
// //                     boxShadow: [
// //                       BoxShadow(
// //                           offset: Offset(-10, -10),
// //                           blurRadius: 15,
// //                           color: Colors.red),
// //                     ]),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.symmetric(
//                         vertical: 15,
//                         horizontal: 15,
//                       ),
//                       child: Icon(
//                         TakeOff.take_off,
//                         size: 30,
//                         color: Theme.of(context).accentColor,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         top: 15,
//                         bottom: 5,
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'FORM',
//                             style: Theme.of(context).textTheme.caption,
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             'Sydney, Austraila',
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Container(
//             width: double.infinity,
//             height: 100,
//           ),
