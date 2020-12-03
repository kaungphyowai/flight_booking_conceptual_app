import 'package:flutter/material.dart';

List flightList = [
  Flight(
      flightclass: "First Seat",
      fromCity: "SYD",
      landingday: "TUE",
      takeoffday: "MON",
      stopNo: 1,
      id: "CX 138",
      landingHour: "10:15 PM",
      logo: 'assets/layer1.png',
      price: 242,
      takeoffHour: "08:00 pm",
      toCity: "DEL",
      terminal: "66 B",
      takeoffdate: "12 Feb, 2020",
      seat: "12 A, 12 B"),
  Flight(
      flightclass: "First Seat",
      fromCity: "SYD",
      landingday: "TUE",
      takeoffday: "MON",
      stopNo: 1,
      id: "CX 139",
      landingHour: "10:15 PM",
      logo: 'assets/layer2.png',
      price: 242,
      takeoffHour: "08:00 pm",
      toCity: "DEL",
      terminal: "66 B",
      takeoffdate: "12 Feb, 2020",
      seat: "43 A, 43 B"),
  Flight(
      flightclass: "Business",
      fromCity: "SYD",
      landingday: "TUE",
      takeoffday: "MON",
      stopNo: 1,
      id: "CX 140 ",
      landingHour: "10:15 PM",
      logo: "assets/layer3.png",
      price: 242,
      takeoffHour: "08:00 pm",
      toCity: "DEL",
      terminal: "66 B",
      takeoffdate: "12 Feb, 2020",
      seat: "23 A, 23 B"),
  Flight(
      flightclass: "Second Seat",
      fromCity: "SYD",
      landingday: "TUE",
      takeoffday: "MON",
      stopNo: 1,
      id: "CX 138",
      landingHour: "10:15 PM",
      logo: "assets/layer3.png",
      price: 242,
      takeoffHour: "08:00 pm",
      toCity: "DEL",
      terminal: "66 B",
      takeoffdate: "12 Feb, 2020",
      seat: "54 A, 54 B")
];

class Flight {
  final String fromCity;
  final String toCity;
  final String terminal;
  final String takeoffHour;
  final String landingHour;
  final String takeoffday;
  final String takeoffdate;
  final String landingday;
  final int stopNo;
  final String flightclass;
  final int price;
  final String id;
  final String logo;

  final String seat;
  Flight(
      {@required this.fromCity,
      @required this.seat,
      @required this.landingday,
      @required this.takeoffday,
      @required this.terminal,
      @required this.stopNo,
      @required this.takeoffdate,
      @required this.flightclass,
      @required this.id,
      @required this.landingHour,
      @required this.logo,
      @required this.price,
      @required this.takeoffHour,
      @required this.toCity});
}

List passengers = [
  Passenger(
    name: "Kaung Phyo Wai",
    age: 12,
    gender: "Male",
    photo: 'assets/firstoval.png',
  ),
  Passenger(
    name: "Rachel",
    age: 23,
    gender: "Female",
    photo: 'assets/secondoval.png',
  ),
];

class Passenger {
  final String name;
  final int age;
  final String gender;
  final String photo;
  Passenger(
      {@required this.name,
      @required this.age,
      @required this.gender,
      @required this.photo});
}
