import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final double iconSize;
  RoundButton(
      {@required this.icon, @required this.title, @required this.iconSize});
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(
      //   vertical: 20,
      //   horizontal: 30,
      // ),
      width: 170,
      height: 54,

      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(-10, -10),
            blurRadius: 15,
            color: Colors.white,
          ),
          BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 10,
            color: Color(0x0F140B2B),
          ),
        ],
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Icon(
              icon,
              size: iconSize,
              color: Colors.white,
            ),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.caption.apply(
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
