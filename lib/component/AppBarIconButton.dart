import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final IconData icon;
  MyContainer({
    @required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
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
        icon,
        color: Theme.of(context).accentColor,
      ),
    );
  }
}
