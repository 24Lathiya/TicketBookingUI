import 'package:flutter/material.dart';
import 'package:ticket_booking_app/model/ticket_model.dart';
import 'package:ticket_booking_app/widgets/dash_divider.dart';
import 'package:ticket_booking_app/widgets/ticket_container.dart';
import 'package:ticket_booking_app/widgets/ticket_text.dart';

class TicketView extends StatelessWidget {
  final Tickets ticket;
  final double rightPadding;
  const TicketView({Key? key, required this.ticket, required this.rightPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.only(right: rightPadding),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TicketText(
                  title: ticket.from!.code!,
                  subTitle: ticket.from!.name!,
                  alignment: CrossAxisAlignment.start,
                  color: Colors.white,
                ),
                TicketContainer(
                  flyingTime: ticket.flyingTime!,
                  color: Colors.white,
                ),
                TicketText(
                  title: ticket.to!.code!,
                  subTitle: ticket.to!.name!,
                  alignment: CrossAxisAlignment.end,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Container(
            color: Colors.red,
            child: Row(
              children: [
                const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    )),
                DashDivider(
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TicketText(
                  title: ticket.date!,
                  subTitle: "Date",
                  alignment: CrossAxisAlignment.start,
                  color: Colors.white,
                ),
                TicketText(
                  title: ticket.departureTime!,
                  subTitle: "Departure Time",
                  alignment: CrossAxisAlignment.center,
                  color: Colors.white,
                ),
                TicketText(
                  title: "${ticket.number!}",
                  subTitle: "Number",
                  alignment: CrossAxisAlignment.end,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
