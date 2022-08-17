import 'package:flutter/material.dart';
import 'package:ticket_booking_app/widgets/big_text.dart';
import 'package:ticket_booking_app/widgets/small_text.dart';
import 'package:ticket_booking_app/widgets/ticket_text.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage("assets/images/img_1.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                              text: "Book Tickets",
                              size: 25,
                            ),
                            SmallText(text: "New Your"),
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.indigo, width: 4)),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      maxRadius: 6,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  BigText(
                                    text: "Premium Status",
                                    color: Colors.indigo,
                                    size: 14,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SmallText(
                      text: "Edit",
                      color: Colors.indigo,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    /*Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.lightbulb,
                        color: Colors.indigo,
                      ),
                      padding: EdgeInsets.all(15),
                    ),*/
                    CircleAvatar(
                      child: Icon(
                        Icons.lightbulb,
                        color: Colors.indigo,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(
                            text: "You've got a new award",
                            color: Colors.white,
                            size: 18,
                          ),
                          SmallText(
                            text: "You have 150 flight in years",
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BigText(text: "Accumylated Miles"),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: BigText(
                text: "125485",
                size: 35,
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles Accurated",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "08 Aug 2022",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Wrap(
                children: List.generate(3, (index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TicketText(
                          title: "2500",
                          subTitle: "Miles",
                          alignment: CrossAxisAlignment.start),
                      TicketText(
                          title: "Sky Airlines",
                          subTitle: "Received From",
                          alignment: CrossAxisAlignment.end)
                    ],
                  );
                }),
              ),
              Center(
                child: BigText(
                  text: "How to get more miles",
                  color: Colors.indigo,
                  size: 14,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
