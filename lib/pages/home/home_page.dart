import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/controller/hotel_controller.dart';
import 'package:ticket_booking_app/controller/ticket_controller.dart';
import 'package:ticket_booking_app/widgets/big_text.dart';
import 'package:ticket_booking_app/widgets/hotel_view.dart';
import 'package:ticket_booking_app/widgets/small_text.dart';
import 'package:ticket_booking_app/widgets/ticket_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    //   _getTiketJsonData();
    // _getHotelJsonData();
    super.initState();
  }

  /*List<Tickets> ticketList = [];
  Future<void> _getTiketJsonData() async {
    final response = await DefaultAssetBundle.of(context)
        .loadString("assets/json/ticket.json");
    // print("===tickets=== : $response");
    var ticket = Ticket.fromJson(jsonDecode(response));
    ticketList = [];
    ticketList.addAll(ticket.tickets!);
  }*/

  /*List<Hotels> hotelList = [];
  Future<void> _getHotelJsonData() async {
    final response = await rootBundle.loadString("assets/json/hotel.json");
    // print("===hotels=== : $response");
    var hotel = Hotel.fromJson(jsonDecode(response));
    hotelList = [];
    hotelList.addAll(hotel.hotels!);
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: "Good Morning"),
                        BigText(
                          text: "Book Ticket",
                          size: 28,
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.airplane_ticket,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    hintText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(text: "Upcoming Flight"),
                    SmallText(text: "View All")
                  ],
                ),
              ),
              /*SingleChildScrollView(
                padding: EdgeInsets.only(left: 15),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [TicketView(), TicketView()],
                ),
              ),*/
              GetBuilder<TicketController>(builder: (ticketController) {
                return Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      padding: EdgeInsets.only(left: 15),
                      itemCount: ticketController.ticketList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return TicketView(
                          ticket: ticketController.ticketList[index],
                          rightPadding: 15,
                        );
                      }),
                );
              }),
              Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(text: "Hotels"),
                    SmallText(text: "View All")
                  ],
                ),
              ),
              GetBuilder<HotelController>(builder: (hotelController) {
                return Container(
                  height: 320,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      padding: EdgeInsets.only(left: 15),
                      itemCount: hotelController.hotelList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return HotelView(
                            hotel: hotelController.hotelList[index]);
                      }),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
