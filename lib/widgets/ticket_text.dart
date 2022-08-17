import 'package:flutter/material.dart';

class TicketText extends StatelessWidget {
  final String title;
  final String subTitle;
  final CrossAxisAlignment alignment;
  final Color color;
  const TicketText(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.alignment,
      this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: alignment,
        children: [
          Text(
            title,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(color: color, fontSize: 12),
          )
        ],
      ),
    );
  }
}
