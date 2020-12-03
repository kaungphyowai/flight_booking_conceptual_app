import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final title;
  final Widget goto;
  CustomButton({@required this.title, this.goto});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return goto;
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 20,
        ),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).accentColor,
        ),
        child: Text(title,
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontSize: 17,
                  color: Colors.white,
                )),
      ),
    );
  }
}
