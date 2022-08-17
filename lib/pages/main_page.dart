import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/controller/hotel_controller.dart';
import 'package:ticket_booking_app/controller/ticket_controller.dart';
import 'package:ticket_booking_app/pages/home/home_page.dart';
import 'package:ticket_booking_app/pages/home/search_page.dart';
import 'package:ticket_booking_app/pages/home/ticket_page.dart';
import 'package:ticket_booking_app/pages/home/user_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentIndex = 0;
  _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  var pages = [
    HomePage(),
    SearchPage(),
    TicketPage(),
    UserPage(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    Get.find<TicketController>().getTicketList();
    Get.find<HotelController>().getHotelList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTap,
          selectedItemColor: Colors.indigo,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket), label: "Ticket"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "User"),
          ]),
    );
  }
}
