import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/widgets/big_text.dart';
import 'package:ticket_booking_app/widgets/small_text.dart';
import 'package:ticket_booking_app/widgets/text_field_view.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var isHotel = false;
  var departureController = TextEditingController();
  var arrivalController = TextEditingController();
  var checkInController = TextEditingController();
  var checkOutController = TextEditingController();

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
              BigText(
                text: "What are you looking for ?",
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
                          isHotel = false;
                        });
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: isHotel
                              ? Colors.grey.withOpacity(0.2)
                              : Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: Center(
                            child: Text(
                          "Flight",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isHotel = true;
                        });
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: isHotel
                              ? Colors.white
                              : Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Center(
                            child: Text(
                          "Hotel",
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
              isHotel
                  ? Container(
                      child: Column(
                        children: [
                          TextFieldView(
                            icon: Icons.login,
                            hint: "Check In",
                            controller: checkInController,
                          ),
                          TextFieldView(
                            icon: Icons.logout,
                            hint: "Check Out",
                            controller: checkOutController,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.indigo),
                            child: Center(
                              child: Text(
                                "Find Hotels",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  : Container(
                      child: Column(
                        children: [
                          TextFieldView(
                            icon: Icons.flight_takeoff,
                            hint: "Departure",
                            controller: departureController,
                          ),
                          TextFieldView(
                            icon: Icons.flight_land,
                            hint: "Arrival",
                            controller: arrivalController,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.indigo),
                            child: Center(
                              child: Text(
                                "Find Tickets",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigText(text: "Upcoming Flight"),
                  SmallText(text: "View All")
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/one.png",
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SmallText(
                          text:
                              "20% descount on business class tickets from Airline for internation flight",
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            BigText(
                              text: "Discount for Survey",
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SmallText(
                              text:
                                  "Take a survey about service and get discount",
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            BigText(
                              text: "Take Love",
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.emoji_emotions,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.emoji_emotions,
                                  color: Colors.yellow,
                                  size: 40,
                                ),
                                Icon(
                                  Icons.emoji_emotions,
                                  color: Colors.yellow,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
