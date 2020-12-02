import 'package:flutter/material.dart';

List flightList = [
  Flight(
      fromCity: "SYD",
      landingdate: "TUE",
      takeoffdate: "MON",
      stopNo: 1,
      id: "CX 138",
      landingHour: "10:15 PM",
      logo: 'assets/layer1.png',
      price: 242,
      takeoffHour: "08:00 pm",
      toCity: "DEL"),
  Flight(
      fromCity: "SYD",
      landingdate: "TUE",
      takeoffdate: "MON",
      stopNo: 1,
      id: "CX 138",
      landingHour: "10:15 PM",
      logo: 'assets/layer2.png',
      price: 242,
      takeoffHour: "08:00 pm",
      toCity: "DEL"),
  Flight(
      fromCity: "SYD",
      landingdate: "TUE",
      takeoffdate: "MON",
      stopNo: 1,
      id: "CX 138",
      landingHour: "10:15 PM",
      logo: "assets/layer3.png",
      price: 242,
      takeoffHour: "08:00 pm",
      toCity: "DEL"),
  Flight(
      fromCity: "SYD",
      landingdate: "TUE",
      takeoffdate: "MON",
      stopNo: 1,
      id: "CX 138",
      landingHour: "10:15 PM",
      logo: "assets/layer3.png",
      price: 242,
      takeoffHour: "08:00 pm",
      toCity: "DEL")
];

class Flight {
  String fromCity;
  String toCity;
  String takeoffHour;
  String landingHour;
  String takeoffdate;
  String landingdate;
  int stopNo;

  int price;
  String id;
  String logo;
  Flight(
      {@required this.fromCity,
      @required this.landingdate,
      @required this.takeoffdate,
      @required this.stopNo,
      @required this.id,
      @required this.landingHour,
      @required this.logo,
      @required this.price,
      @required this.takeoffHour,
      @required this.toCity});
}
