import 'package:flutter/material.dart';

class RoundButton extends StatefulWidget {
  final String title;
  final IconData icon;
  final double iconSize;
  final changeState;
  final id;
  final int selectedItem;
  RoundButton(
      {@required this.icon,
      @required this.title,
      @required this.iconSize,
      this.changeState,
      this.selectedItem,
      this.id});

  @override
  _RoundButtonState createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.changeState(
          newItem: widget.id,
        );
      },
      child: Container(
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
          color: widget.selectedItem == widget.id
              ? Theme.of(context).accentColor
              : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Icon(
                widget.icon,
                size: widget.iconSize,
                color: widget.selectedItem == widget.id
                    ? Colors.white
                    : Theme.of(context).accentColor,
              ),
            ),
            Text(
              widget.title,
              style: widget.selectedItem == widget.id
                  ? Theme.of(context).textTheme.caption.apply(
                        color: Colors.white,
                      )
                  : Theme.of(context).textTheme.caption.apply(
                        color: Theme.of(context).accentColor,
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
