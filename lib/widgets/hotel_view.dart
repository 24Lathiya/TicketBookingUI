import 'package:flutter/material.dart';
import 'package:ticket_booking_app/model/hotel_model.dart';
import 'package:ticket_booking_app/widgets/big_text.dart';
import 'package:ticket_booking_app/widgets/small_text.dart';

class HotelView extends StatelessWidget {
  final Hotels hotel;
  const HotelView({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 30),
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: Colors.indigo, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180, // must
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  // image: NetworkImage("https://randomuser.me/api/portraits/men/18.jpg"),
                  image: AssetImage("assets/images/${hotel.image}"),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          BigText(
            text: hotel.place!,
            color: Colors.grey,
            size: 16,
          ),
          SmallText(
            text: hotel.destination!,
            color: Colors.white,
          ),
          BigText(
            text: "\S ${hotel.price}/Night",
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
