import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/model/ticket_model.dart';
import 'package:ticket_booking_app/widgets/big_text.dart';
import 'package:ticket_booking_app/widgets/dash_divider.dart';
import 'package:ticket_booking_app/widgets/ticket_container.dart';
import 'package:ticket_booking_app/widgets/ticket_text.dart';
import 'package:ticket_booking_app/widgets/ticket_view.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  var isPrevious = false;
  late Tickets ticket;
  @override
  void initState() {
    // TODO: implement initState
    ticket = Tickets(
        from: From(code: "AMD", name: "Ahmedabad"),
        to: From(code: "DL", name: "Delhi"),
        flyingTime: "10H 30M",
        date: "2 MAY",
        departureTime: "10:00 AM",
        number: 25);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: [
                  BigText(
                    text: "Tickets",
                    size: 32,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isPrevious = false;
                            });
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: isPrevious
                                  ? Colors.grey.withOpacity(0.2)
                                  : Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              "Upcoming",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isPrevious = true;
                            });
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: isPrevious
                                  ? Colors.white
                                  : Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              "Previous",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TicketText(
                                title: "AHM",
                                subTitle: "Ahmadabad",
                                alignment: CrossAxisAlignment.start),
                            TicketContainer(flyingTime: "10:30AM"),
                            TicketText(
                                title: "DL",
                                subTitle: "Delhi",
                                alignment: CrossAxisAlignment.end)
                          ],
                        ),
                        DashDivider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TicketText(
                              title: "1 May",
                              subTitle: "Date",
                              alignment: CrossAxisAlignment.start,
                            ),
                            TicketText(
                              title: "10:00 AM",
                              subTitle: "Departure Time",
                              alignment: CrossAxisAlignment.center,
                            ),
                            TicketText(
                              title: "25",
                              subTitle: "Number",
                              alignment: CrossAxisAlignment.end,
                            )
                          ],
                        ),
                        Divider(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TicketText(
                              title: "Tushar Lathiya",
                              subTitle: "Passenger",
                              alignment: CrossAxisAlignment.start,
                            ),
                            TicketText(
                              title: "9876 543210",
                              subTitle: "Passport",
                              alignment: CrossAxisAlignment.end,
                            ),
                          ],
                        ),
                        DashDivider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TicketText(
                              title: "9876 5432 1000",
                              subTitle: "Number of e-ticket",
                              alignment: CrossAxisAlignment.start,
                            ),
                            TicketText(
                              title: "BC98765",
                              subTitle: "Booking Code",
                              alignment: CrossAxisAlignment.end,
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/visa.png",
                                        height: 20,
                                        width: 50,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "**** 9876",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Payment Method",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  )
                                ],
                              ),
                              padding: EdgeInsets.only(left: 15),
                            ),
                            TicketText(
                              title: "\$ 250",
                              subTitle: "Price",
                              alignment: CrossAxisAlignment.end,
                            ),
                          ],
                        ),
                        BarcodeWidget(
                          data: "Hello Tushar",
                          barcode: Barcode.code128(),
                          drawText: false,
                          height: 70,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          errorBuilder: (context, error) =>
                              Center(child: Text(error)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TicketView(
                    ticket: ticket,
                    rightPadding: 0,
                  )
                ],
              ),
            ),
            Positioned(
                top: 300,
                left: 5,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.black)),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    maxRadius: 6,
                  ),
                )),
            Positioned(
                top: 300,
                right: 5,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.black)),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    maxRadius: 6,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
