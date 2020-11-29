import 'package:flutter/material.dart';
import 'app_icons.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xffF6F9FF),
          accentColor: Color(0xff0050A6),
          textTheme: TextTheme(
            headline6: TextStyle(
              fontSize: 20,
              color: Color(0xff0050A6),
              letterSpacing: 8,
            ),
          )),
      home: SearchFlight(),
    ),
  );
}

class SearchFlight extends StatefulWidget {
  SearchFlight({Key key}) : super(key: key);

  @override
  _SearchFlightState createState() => _SearchFlightState();
}

class _SearchFlightState extends State<SearchFlight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
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
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Theme.of(context).primaryColor,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(5, 5),
                          blurRadius: 15,
                          color: Color(0xA000000),
                        ),
                        BoxShadow(
                          offset: Offset(-10, -18),
                          blurRadius: 15.0,
                          color: Color(0xffFFFFFF),
                        ),
                      ]),
                  padding: EdgeInsets.all(20),
                  child: Icon(
                    Icons.menu,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                Text(
                  "Search The Flight",
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Theme.of(context).primaryColor,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(5, 5),
                          blurRadius: 15,
                          color: Color(0xA000000),
                        ),
                        BoxShadow(
                          offset: Offset(-10, -18),
                          blurRadius: 15.0,
                          color: Color(0xffFFFFFF),
                        ),
                      ]),
                  padding: EdgeInsets.all(20),
                  child: Icon(
                    Icons.menu,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
