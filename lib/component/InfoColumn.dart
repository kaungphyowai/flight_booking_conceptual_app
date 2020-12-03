import 'package:flutter/material.dart';

class InfoColumn extends StatelessWidget {
  const InfoColumn({
    @required this.firstCaption,
    @required this.secondCaption,
    @required this.firstInfo,
    @required this.secondInfo,
  });
  final firstCaption;
  final secondCaption;
  final firstInfo;
  final secondInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              firstCaption,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    fontSize: 12,
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              firstInfo,
              style: Theme.of(context).textTheme.caption.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                  ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              secondCaption,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    fontSize: 12,
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              secondInfo,
              style: Theme.of(context).textTheme.caption.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
