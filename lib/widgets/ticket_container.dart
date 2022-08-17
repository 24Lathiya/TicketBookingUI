import 'package:flutter/material.dart';
import 'package:ticket_booking_app/widgets/small_text.dart';

class TicketContainer extends StatelessWidget {
  final String flyingTime;
  final Color color;
  const TicketContainer(
      {Key? key, required this.flyingTime, this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  border: Border.all(color: color, width: 2),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Wrap(
              children: List.generate(5, (index) {
                return index == 2
                    ? Icon(
                        Icons.flight_takeoff,
                        color: color,
                      )
                    : Text(
                        " - ",
                        style: TextStyle(color: color),
                      );
              }),
            ),
            Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  border: Border.all(color: color, width: 2),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
        SmallText(
          text: flyingTime,
          color: color,
        )
      ],
    );
  }
}
